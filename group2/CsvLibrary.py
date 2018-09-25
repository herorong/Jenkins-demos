import csv
def write_data(datas, filename='output.csv'):
	f = open(filename,'wb')
	#TODO:: Write data to file output.csv
	fieldnames = ['email', 'mobile_no', 'IDNO']
	csvfile = csv.DictWriter(f, fieldnames=fieldnames)
	csvfile.writeheader()
	csvfile.writerow(datas)
	for data in  datas:
		print(data)
	f.close()

def read_data(filename):
	f = open(filename, 'r')
	csvfile = csv.reader(f)
	f.close
	return [rows for rows in csvfile]