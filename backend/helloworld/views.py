import logging
import os

from django.shortcuts import render
from django.http import HttpResponse

logger = logging.getLogger(__name__)

# Basic example of different logs that will be sent to graylog server
def hello_world(request):
    version_var = "v3"
    logger.debug(f'A debug message {version_var}')
    logger.info(f'An info message {version_var}')
    logger.warning(f'A warning message {version_var}')
    logger.error(f'An error message {version_var}')
    logger.critical(f'A critical message {version_var}')

    return HttpResponse("Hello, World!")
