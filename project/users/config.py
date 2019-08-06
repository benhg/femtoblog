from os import environ as env
import multiprocessing

PORT = int(env.get("PORT", 8080))
DEBUG_MODE = int(env.get("DEBUG_MODE", 1))

bind = ":"+str(port)
workers = multiprocessing.cpu_count()*2 + 1
threads = 2*multiprocessing.cpu_count()
