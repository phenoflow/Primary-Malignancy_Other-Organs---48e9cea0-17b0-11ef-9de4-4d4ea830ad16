# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"Byu8000","system":"readv2"},{"code":"Byu1200","system":"readv2"},{"code":"B483.00","system":"readv2"},{"code":"B21y.00","system":"readv2"},{"code":"B5...00","system":"readv2"},{"code":"B625000","system":"readv2"},{"code":"Byu7000","system":"readv2"},{"code":"Byu8200","system":"readv2"},{"code":"B1z0.00","system":"readv2"},{"code":"B59z.00","system":"readv2"},{"code":"B626000","system":"readv2"},{"code":"B55y.00","system":"readv2"},{"code":"Byu9000","system":"readv2"},{"code":"Byu7300","system":"readv2"},{"code":"B12y.00","system":"readv2"},{"code":"Byu5700","system":"readv2"},{"code":"B1zy.00","system":"readv2"},{"code":"B59..00","system":"readv2"},{"code":"Byu7100","system":"readv2"},{"code":"B52y.00","system":"readv2"},{"code":"B18yz00","system":"readv2"},{"code":"B5y..00","system":"readv2"},{"code":"Byu2500","system":"readv2"},{"code":"ByuC600","system":"readv2"},{"code":"B18y.00","system":"readv2"},{"code":"B5...11","system":"readv2"},{"code":"ByuC000","system":"readv2"},{"code":"B54y.00","system":"readv2"},{"code":"B454.00","system":"readv2"},{"code":"ByuB100","system":"readv2"},{"code":"ByuC.00","system":"readv2"},{"code":"B55yz00","system":"readv2"},{"code":"C37y600","system":"readv2"},{"code":"B623000","system":"readv2"},{"code":"B5z..00","system":"readv2"},{"code":"B45y.00","system":"readv2"},{"code":"B23y.00","system":"readv2"},{"code":"B24X.00","system":"readv2"},{"code":"C75.8","system":"readv2"},{"code":"C26.0","system":"readv2"},{"code":"C38.3","system":"readv2"},{"code":"C63","system":"readv2"},{"code":"C57","system":"readv2"},{"code":"C39.0","system":"readv2"},{"code":"C75.9","system":"readv2"},{"code":"C88.9","system":"readv2"},{"code":"C68","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_other-organs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_other-organs-trunkunspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_other-organs-trunkunspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_other-organs-trunkunspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
