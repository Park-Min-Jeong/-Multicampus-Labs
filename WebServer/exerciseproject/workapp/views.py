from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
import time

def exercise1(request):
    today = time.localtime()
    context = {"month":today.tm_mon, "date":today.tm_mday}
    return render(request, "exercise1.html", context)

def exercise2(request):
    type = request.GET.get("type")
    if type == "memberlist":
        result = ["박민정", "박수은", "서대훈"]
    elif type == "number":
        result = "우리팀 인원은 3명입니다"
    else:
        result = "type=memberlist 또는 type=number 로 쿼리를 전달하세요"
    context = {"result":result}
    return render(request, "exercise2.html", context)

def exercise3(request):
    context = None
    if request.method == "POST":
        name = request.POST.get("name", "익명")
        message = request.POST.get("message", "없음")
        context = {
            "info": {
                "name": name,
                "message": message,
            }
        }
    return render(request, "exercise3.html", context)

def product1(request):
    return render(request, "product1.html")

def basket1(request):
    pid = request.GET.get("pid")
    context = {"pid": pid}
    return render(request, "basket1.html", context)
