#!/usr/bin/env python3

import sys
import subprocess   

def write_to_clipboard(output):
    process = subprocess.Popen(
            'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Please enter a valid case number")
        exit(1)

    cust_name = input("Customer name?\n> ")
    SR_num = sys.argv[1]
    description = input("Provide description?\n> ")
    
    email_string = ("Hey %s,\n\n"
            "My name is Gabe Kroch, and I'm a customer support engineer with "
            "ACI Solution Support in Cisco TAC.  I am sending you this email "
            "to notify you that I've taken ownership of your service request, "
            "SR %s, regarding %s.  My contact information is below. \n\n"
            "I have some additional questions regarding your initial problem description: \n"
            "\t1. What version of ACI are you running?\n\n"
            "If you haven’t already done so, please generate a set of techsupports "
            "against the APICs and switch nodes in question and upload a DB dump to the SR. "
            "The following URL has more information on that process:\n"
            "https://supportforums.cisco.com/t5/data-center-documents/"
            "aci-on-demand-techsupport-collection-when-first-opening-an-sr/ta-p/3215947\n\n"
            "Would you like to schedule a WebEx?  "
            "If so, let me know a time that works for you today, or later this week.\n\n"
            "Cheers,\n"
            "Gabe\n"
            % (cust_name, SR_num, description))

    print(email_string)
    write_to_clipboard(email_string)
