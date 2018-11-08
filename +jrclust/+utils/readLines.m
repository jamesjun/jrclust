function lines = readLines(filename)
    %READLINES Read the lines of a text file into a cell array
    assert(isfile(filename), 'Error: %s is not a file', filename);

    fid = fopen(filename, 'r');
    lines = textscan(fid, '%s', 'Delimiter', '\n');
    fclose(fid);

    lines = lines{1};
end

