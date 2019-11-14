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
remove_array = ['</table>', '</tbody>', 'ResultScore' ,'</a>', '">', '<tr>', '<th>', '</th>', '<thead>', '</tr>', '</thead>', '<tbody>', '<td data-th="', '</td>', '">'
            '                                        ', '                                        ', '                                ',
                '    ', ' ', '<divclass="toplists__standard','<pclass="standard__textLimit:10.55</p>', '</div>', '<divclass="table-wrapper', '<tableclass="records-table', 'Rank', 'Mark', 'WIND', 'Competitor', 'DOB', 'Nat', 'Pos', 'Venue', 'Date', 'ResultsScore'
                ]
strip_data = clean_data(remove_array, first_partition);
strip_data = re.sub('<div class=.*?Results Score', '', strip_data, flags=re.DOTALL)
strip_data = strip_data.split("\n")
strip_data = list(filter(None, strip_data))

prefixes = ('<ahref', '<img', '<div')
for word in strip_data[:]:
    if word.startswith(prefixes):
        strip_data.remove(word)
print(strip_data)

with open('athlete.csv', mode='w') as athlete_data:
    athlete_writer = csv.writer(athlete_data, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    athlete_writer.writerow(["Rank", "Mark", "Wind", "Name", "Date of Birth", "Nationality", "Position", "Venue", "Event Date", "Score"])
    for x in range(1,51):
        a = ((x*10)-10)
        b = (x*10)
        athlete_writer.writerow([strip_data[a],strip_data[a+1],strip_data[a+2],strip_data[a+3],strip_data[a+4],
                              strip_data[b-4],strip_data[b-3],strip_data[b-2],strip_data[b-1],strip_data[b]])
        print(strip_data[a:b])
