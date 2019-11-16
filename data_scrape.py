import csv
import urllib.request
import re

keep_first_parse = []
start_year = 2001
end_year = 2019

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

def add_blanks(array, kyear):
    new_array = []
    new_array.clear()
    actual_location = []
    for x in kyear:
            location = x.split(":")
            actual_location.append((int(location[0]) * int(location[1])) - (int(location[0]) - int(location[2])))
    for i in actual_location:
            for j in range(len(array)):
                if j == i:
                    new_array.append(' ')
                    new_array.append(array[j])
                else:
                    new_array.append(array[j])
            array.clear()
            array = new_array[:]
            new_array.clear()
    return array

def remove_special():
    print() #remove number and special characters from name

full_link = "https://www.worldathletics.org/records/toplists/sprints/100-metres/outdoor/men/senior/2002?regionType=world&timing=electronic&windReading=regular&page=1&bestResultsOnly=true"
data = urllib.request.urlopen(full_link)
mybytes = data.read()
webpage_code = mybytes.decode("utf8")
data.close()
first_partition = ''.join(web_partition('<div class="toplists__standard">', '<div class="container container--pagination toplist-pagination">', webpage_code));
strip_data = first_partition
remove_array = ['</table>', '</tbody>', 'ResultScore' ,'</a>', '">', '<tr>', '<th>', '</th>', '<thead>', '</tr>', '</thead>', '<tbody>', '<td data-th="', '</td>', '">'
             '                                        ', '                                        ', '                                ',
                    '    ', ' ', '<divclass="toplists__standard','<pclass="standard__textLimit:10.55</p>', '</div>', '<divclass="table-wrapper', '<tableclass="records-table', 'Rank', 'Mark', 'WIND', 'Competitor', 'DOB', 'Nat', 'Pos', 'Venue', 'Date', 'ResultsScore','<pclass="standard__textLimit:10.90</p>',
    '<pclass="standard__textLimit:11.00</p>'
                    ]
strip_data = clean_data(remove_array, first_partition);
strip_data = re.sub('<div class=.*?Results Score', '', strip_data, flags=re.DOTALL)
strip_data = strip_data.split("\n")
strip_data = list(filter(None, strip_data))
prefixes = ('<ahref', '<img', '<div')
for word in strip_data[:]:
        if word.startswith(prefixes):
            strip_data.remove(word)


updated_array = set_numbers(strip_data)
k2001 = ['10:51:4', '10:59:2', '10:59:4', '10:66:2', '10:84:2', '10:90:2']
k2002 = ['10:58:2', '10:61:2', '10:72:2', '10:88:2', '10:91:2', '10:92:2', '10:94:2', '10:99:2', '10:100:2']
k2003 = ['10:60:2', '10:78:2', '10:96:2', '10:100:2']
k2004 = ['10:66:2', '10:67:2']
k2005 = ['10:22:2', '10:31:2', '10:56:2', '10:85:2', '10:90:2', '10:95:6']
k2006 = ['10:17:2', '10:21:2', '10:21:4', '10:56:2']
k2007 = ['10:99:2']
k2008 = ['10:78:2']
k2009 = ['10:68:2']
k2010 = ['10:96:2', '10:99:2']
k2011 = ['10:49:2', '10:49:4']
k2012 = []
k2013 = ['10:61:2', '10:70:2']
k2014 = []
k2015 = []
k2016 = []
k2017 = []
k2018 = ['10:41:4', '10:84:4']
k2019 = ['10:42:4', '10:47:4', '10:57:4']

array_data = add_blanks(updated_array, k2002)


with open('athlete.csv', mode='w') as athlete_data:
    athlete_writer = csv.writer(athlete_data, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    athlete_writer.writerow(["Rank", "Time", "Wind", "Name", "Date of Birth", "Nationality", "Event Date"])
    for x in range(1,101):
        a = ((x*10)-10)
        b = (x*10)
        athlete_writer.writerow([array_data[a], array_data[a+1], array_data[a+2], array_data[a+3], array_data[a+4], array_data[a+5], array_data[a+8]])
