function ret = Matrix2Tex(matrix, options)
% "Produce a nicely formated LaTeX table/tabular environment from data matrix"
% pass in numerical matrix. Pass in options as a structure. 
% Supports options for 
% column format (opt.form  = {'% .3E','% .3E','% .3E','% .3E'})
% column alignment (opt.align = 'c|c|c|c...')
% label (opt.label), will automatically prefix label with 'tab:'
% caption (opt.caption)
% header (opt.header) 'some & column & headers'
% left column (opt.leftcol) {'a','b','c','Total'}
%--------------------------------------------------------
% Example of usage
% opts.form = {'%i', '% .2E','% .2f', '% .4f'};
% opts.align = 'c|l|c|c';
% Matrix2Tex(tab,opts)
% will produce an output of
%
% \begin{table}[!ht] 
%   \vspace{0.1in} 
%   \centering 
%   \begin{tabular}{c|l|c|c}
%  	4 & 7.75E+00 & 0.00 & 0.0000 \\ 
%  	8 & 8.22E-01 & 9.42 & 3.2364 \\ 
%  	16 & 9.65E-02 & 8.53 & 3.0920 \\ 
%  	32 & 1.19E-02 & 8.12 & 3.0210 \\ 
%  	64 & 1.48E-03 & 8.03 & 3.0062 \\ 
%   \end{tabular} 
%   \caption{INSERT CAPTION} 
%   \label{tab:LABEL} 
% \end{table}
%
%---------------------------------------------------------
% Author: jjack12@gmail.com ; version 0.3; no guarantees provided

%% Set Default format values
nCols = size(matrix,2);
if isfield(options,'leftcol')
  nCols = nCols+1;
end
if ~isfield(options, 'form')
    options.form = repmat({'% .3E'},1,nCols);
end
if ~isfield(options, 'align')
    options.align = repmat('c|',1,nCols);
    options.align = options.align(1:end-1);
end
if ~isfield(options, 'caption')
    options.caption = 'INSERT CAPTION';
end
if ~isfield(options, 'label')
    options.label = 'LABEL';
elseif strcmp(options.label(1:4), 'tab:')
    options.label = options.label(5:end);
end
%% generate header

Outstring = '\\begin{table}[!ht] \n  \\vspace{0.1in} \n  \\centering \n';
Outstring = strcat(Outstring, '  \\begin{tabular}{', options.align, '} \n \t');
if isfield(options, 'header')
   Outstring = strcat(Outstring, ' ', options.header, '\\\\ \n\t');
end
if isfield(options, 'leftcol')
  for i = 1:size(matrix,1)
     Outstring = strcat(Outstring, ' ', options.leftcol{i}, '&');
     for j = 1:size(matrix,2)
         formatspec = options.form(j);
         Outstring = [Outstring, num2str(matrix(i,j), char(formatspec)), ' & ']; %#ok<*AGROW>
     end
     Outstring = [Outstring(1:end-2), '\\\\ \n \t'];
  end
else
%% put in the matrix
  for i = 1:size(matrix,1)
     for j = 1:size(matrix,2)
         formatspec = options.form(j);
         Outstring = [Outstring, num2str(matrix(i,j), char(formatspec)), ' & ']; %#ok<*AGROW>
     end
     Outstring = [Outstring(1:end-2), '\\\\ \n \t'];
  end
end
%% Footer
Outstring = [Outstring(1:end-2), ' \\end{tabular} \n  \\caption{',options.caption,'} \n',...
'  \\label{tab:',options.label,'} \n\\end{table}'];
ret = sprintf(Outstring);
end

