_  _____ ____ _  _____  _____ _____ 
| |/ /_ _/ ___| |/ / _ \|  ___|  ___|
| ' / | | |   | ' / | | | |_  | |_   
| . \ | | |___| . \ |_| |  _| |  _|  
|_|\_\___\____|_|\_\___/|_|   |_|  

import psutil

def scan_for_suspicious_processes():
    suspicious_processes = []
    for proc in psutil.process_iter(['name', 'pid', 'memory_info']):
        process_name = proc.info['name']
        process_pid = proc.info['pid']
        process_memory = proc.info['memory_info'].rss
        
        if process_memory == 0:
            suspicious_processes.append((process_name, process_pid))
    
    return suspicious_processes

def main():
    suspicious_processes = scan_for_suspicious_processes()
    
    if suspicious_processes:
        print("Suspicious Processes:")
        for process_name, process_pid in suspicious_processes:
            print(f"Process Name: {process_name}\tPID: {process_pid}")
    else:
        print("No suspicious processes found.")

if __name__ == '__main__':
    main()
#####
