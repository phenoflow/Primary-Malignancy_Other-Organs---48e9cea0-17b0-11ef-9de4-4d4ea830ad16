# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B18y700","system":"readv2"},{"code":"B310400","system":"readv2"},{"code":"B200200","system":"readv2"},{"code":"B241300","system":"readv2"},{"code":"B18y100","system":"readv2"},{"code":"B18y300","system":"readv2"},{"code":"B55y200","system":"readv2"},{"code":"B486.00","system":"readv2"},{"code":"B313200","system":"readv2"},{"code":"B442.00","system":"readv2"},{"code":"B443.00","system":"readv2"},{"code":"B18y600","system":"readv2"},{"code":"Byu4.00","system":"readv2"},{"code":"B123.00","system":"readv2"},{"code":"B550.00","system":"readv2"},{"code":"B484.00","system":"readv2"},{"code":"B441.00","system":"readv2"},{"code":"B200300","system":"readv2"},{"code":"B500000","system":"readv2"},{"code":"B122.00","system":"readv2"},{"code":"B241000","system":"readv2"},{"code":"B4A3.00","system":"readv2"},{"code":"B48y000","system":"readv2"},{"code":"B550100","system":"readv2"},{"code":"B212.00","system":"readv2"},{"code":"B18y200","system":"readv2"},{"code":"B215.00","system":"readv2"},{"code":"B551100","system":"readv2"},{"code":"B121.00","system":"readv2"},{"code":"B550000","system":"readv2"},{"code":"B55y000","system":"readv2"},{"code":"B210.00","system":"readv2"},{"code":"B453.00","system":"readv2"},{"code":"B550z00","system":"readv2"},{"code":"B550400","system":"readv2"},{"code":"B500100","system":"readv2"},{"code":"B211.00","system":"readv2"},{"code":"B550300","system":"readv2"},{"code":"B241200","system":"readv2"},{"code":"B313100","system":"readv2"},{"code":"B550200","system":"readv2"},{"code":"B480.00","system":"readv2"},{"code":"B591.00","system":"readv2"},{"code":"B550500","system":"readv2"},{"code":"B500200","system":"readv2"},{"code":"B485.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_other-organs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_other-organs-neoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_other-organs-neoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_other-organs-neoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
