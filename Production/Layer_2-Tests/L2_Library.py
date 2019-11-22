## Layer 2 Tests Library
## All Layer 2 Protocol Tests

# Library Imports
import os


# ICMP Echo Request
def ping_rtt(hostname):
    try:
        response = os.system("ping -c 3 " + hostname + " > /dev/null 2>&1")
        if response == 0:
            response = True
        else:
            response = False
        if response is True:
            avg_time = float(0)
            try:
                # number_of_times = int(sys.argv[2])
                # Taking the args from command line
                counts = 5
                for i in range(counts):
                    # Iterating the given number of times
                    cmd = 'timeout 2 ping -c 1 ' + hostname
                    # forming command
                    data = os.popen(cmd).read()
                    if 'time=' in data and 'ms' in data:
                        ms = data.split('time=')[1].split(' ms')[0]
                        avg_time = avg_time + float(ms)
                    else:
                        pass
            except Exception as e:
                print(e)
            avg_time = (round((avg_time / counts), 2))
        else:
            pass
        return {'status': response, 'time': avg_time}
    except:
        return {'status': None, 'time': None}
