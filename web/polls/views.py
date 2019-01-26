from django.shortcuts import HttpResponse


def index(request):
    return HttpResponse("Hellow, world. You're at the polls index.")
