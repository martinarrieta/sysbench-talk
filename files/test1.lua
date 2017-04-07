#!/usr/bin/env sysbench

sysbench.cmdline.options = {
    file_size = {"Size of each file to create", 10},
    block_size = {"Number of files to create", 1}
}

function round(x)
  if x%2 ~= 0.5 then
    return math.floor(x+0.5)
  end
  return math.floor(x)
end

function prepare()
  print("Prepare... ")
end

function event(thread_id)
  io.write(".")
  dd_count = round(sysbench.opt.file_size/sysbench.opt.block_size)
  dd_command_str = "dd if=/dev/zero of=sysbenchtest-".. thread_id .. ".test count=" .. dd_count .. " bs=" .. sysbench.opt.block_size .. "  >/dev/null 2>&1"
  os.execute(dd_command_str)
end

function cleanup()
  print("Finishing... ")
  os.execute("rm -rf sysbenchtest*.test")
end
