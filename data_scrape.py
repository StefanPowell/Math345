import csv
import urllib.request
import re

keep_first_parse = []

def web_partition(start, end, code):
    for x in range(len(code)):  # get tables
        if (code[x:x + len(start)] == start):
            for j in range(x, len(code)):
                keep_first_parse.append(code[j])
                if (code[j - len(end):j] == end):
                    break
    return keep_first_parse

def clean_data(array_data, partition):
    for y in range(len(array_data)):
        partition = partition.replace(array_data[y], '')
    return partition


full_link = "https://www.worldathletics.org/records/toplists/sprints/100-metres/outdoor/men/senior/2001?regionType=world&timing=electronic&windReading=regular&page=1&bestResultsOnly=true"

data = urllib.request.urlopen(full_link)
mybytes = data.read()
webpage_code = mybytes.decode("utf8")
data.close()
first_partition = ''.join(web_partition('<div class="toplists__standard">', '<div class="container container--pagination toplist-pagination">', webpage_code));


strip_data = first_partition
remove_array = ['</a>', '">', '<tr>', '<th>', '</th>', '<thead>', '</tr>', '</thead>', '<tbody>', '<td data-th="', '</td>', '">'
            '                                        ', '                                        ', '                                ',
                '    ', ' ']
strip_data = clean_data(remove_array, first_partition);
strip_data = re.sub('<div class=.*?Results Score', '', strip_data, flags=re.DOTALL)
strip_data = strip_data.split("\n")
strip_data = list(filter(None, strip_data))
print(strip_data)
