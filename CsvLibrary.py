import csv
def write_data(datas):
	print(datas['email'])
	print(datas['mobile_no'])
	#TODO:: Write data to file output.csv
	f = open('output.csv', 'wb')
	fieldnames = ['email', 'mobile_no', 'IDNO']
	csvfile = csv.DictWriter(f, fieldnames=fieldnames)
	csvfile.writeheader()
	csvfile.writerow(datas)
	f.close()

def read_data(filename):
	f = open(filename, 'r')
	csvfile = csv.reader(f)
	f.close
	return [rows for rows in csvfile]