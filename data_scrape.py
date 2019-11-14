import csv
import urllib.request

keep_first_parse = []

def web_partition(start, end, code):
    for x in range(len(code)):  # get tables
        if (code[x:x + len(start)] == start):
            for j in range(x, len(code)):
                keep_first_parse.append(code[j])
                if (code[j - len(end):j] == end):
                    break
    return keep_first_parse

full_link = "https://www.worldathletics.org/records/toplists/sprints/100-metres/outdoor/men/senior/2001?regionType=world&timing=electronic&windReading=regular&page=1&bestResultsOnly=true"

data = urllib.request.urlopen(full_link)
mybytes = data.read()
webpage_code = mybytes.decode("utf8")
data.close()

first_partition = ''.join(web_partition('<div class="toplists__standard">', '<div class="container container--pagination toplist-pagination">', webpage_code));
print(first_partition)