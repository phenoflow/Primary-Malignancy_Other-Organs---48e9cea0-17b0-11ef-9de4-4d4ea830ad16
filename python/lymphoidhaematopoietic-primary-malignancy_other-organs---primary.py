# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B6y..00","system":"readv2"},{"code":"B626500","system":"readv2"},{"code":"B626800","system":"readv2"},{"code":"B625200","system":"readv2"},{"code":"B62z000","system":"readv2"},{"code":"B62z400","system":"readv2"},{"code":"B62z200","system":"readv2"},{"code":"B623300","system":"readv2"},{"code":"B62zz00","system":"readv2"},{"code":"B62z300","system":"readv2"},{"code":"B625800","system":"readv2"},{"code":"B62z800","system":"readv2"},{"code":"B62z600","system":"readv2"},{"code":"B62z500","system":"readv2"},{"code":"ByuDB00","system":"readv2"},{"code":"B62z.00","system":"readv2"},{"code":"ByuDA00","system":"readv2"},{"code":"B6z..00","system":"readv2"},{"code":"B62z100","system":"readv2"},{"code":"B623100","system":"readv2"},{"code":"C96","system":"readv2"},{"code":"C88.4","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_other-organs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphoidhaematopoietic-primary-malignancy_other-organs---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphoidhaematopoietic-primary-malignancy_other-organs---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphoidhaematopoietic-primary-malignancy_other-organs---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
