local status, err = pcall(function() error({code=121}) end)
print(err.code)