% 读取path目录下的符合正则表达式regex的文件名，返回文件名cell
% Author: LiuVV
% 2018/07/23

function filename_list = get_regex_files(path, regex)
files = dir(path);
s = size(files);
filename_list = {};
for i = 1:s(1)
    name = strcat(files(i,1).name); 
    index = -1;
    index = regexpi(name, regex, 'start');
    if index ~= -1
        filename_list = [filename_list, name];
    end
end