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

def set_numbers(array):
    newarray = []
    for value in array:
        try:
             intvalue = int(value)
             newarray.append(intvalue)
        except Exception as e:
            try:
                floatvalue = float(value)
                newarray.append(floatvalue)
            except Exception as e:
                newarray.append(value)
    return newarray

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

#with open('athlete.csv', mode='w') as athlete_data:
#    athlete_writer = csv.writer(athlete_data, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
#    athlete_writer.writerow(["Rank", "Mark", "Wind", "Name", "Date of Birth", "Nationality", "Position", "Venue", "Event Date", "Score"])
#    for x in range(1,51):
#        a = ((x*10)-10)
#        b = (x*10)
#        athlete_writer.writerow([strip_data[a],strip_data[a+1],strip_data[a+2],strip_data[a+3],strip_data[a+4],
#                              strip_data[b-4],strip_data[b-3],strip_data[b-2],strip_data[b-1],strip_data[b]])
#        print(strip_data[a:b])


updated_array = set_numbers(strip_data)

k2001 = ['10:51:4', '10:58:2', '10:58:4']
k2002 = []
k2003 = []
k2004 = []
k2005 = []
k2006 = []
k2007 = []
k2008 = []
k2009 = []
k2010 = []
k2011 = []
k2012 = []
k2013 = []
k2014 = []
k2015 = []
k2016 = []
k2017 = []
k2018 = []
k2019 = []

def add_blanks(array, kyear):
    new_array = []
    new_array.clear()
    actual_location = []
    for x in kyear:
        location = x.split(":")
        actual_location.append((int(location[0]) * int(location[1])) - (int(location[0]) - int(location[2])))
    for i in actual_location:
        for j in range(len(array)): #the problem is that your looping from the front over and over again
            if j == i:
                new_array.append('')
                new_array.append(array[j])
            else:
                new_array.append(array[j])
    return new_array

#when you have looped through get rest of elements left and then pass again to function

array_data = add_blanks(updated_array, k2001)

#fix name formats and date formats

for x in range(1,98):
        a = ((x*10)-10)
        b = (x*10)
        print(array_data[a:b])