# encoding:utf-8
from urllib.parse import urlencode
from base64 import b64encode
import hashlib
import hmac
import re
import json
import requests
import ephem
import math
import sys
import time
import datetime
import pendulum

def makerr():
 Note=open(r'C:\weather\net.txt',mode='w')
 Note.write('2\nnieolzx8cc4hfoqq9cn6rhuwq9cn6i0vmzx8cc4hfoqq9cn6;\n')
 Note.close()
 sys.exit(0)

def isdat(datium):
 if datium!='':
  return datium
 else:
  return '9999'

def wek(dat):
 p=int(pendulum.parse(dat).day_of_week)
 if p==1:
  return '周一'
 elif p==2:
  return '周二'
 elif p==3:
  return '周三'
 elif p==4:
  return '周四'
 elif p==5:
  return '周五'
 elif p==6:
  return '周六'
 else:
  return '周日'

def getloc():
 Note=open('C:\weather\latitude.txt')
 llaa=Note.read()
 Note.close()
 Note=open('C:\weather\longitude.txt')
 lloo=Note.read()
 Note.close()
 llaat=re.findall('(.*?)°N',llaa)[0]
 lloon=re.findall('(.*?)°E',lloo)[0]
 return (llaat+':'+lloon)

def key():
 PK='Public_Key'
 SK='Private_Key'
 argv=sys.argv[1:]
 argv = argv or ["location="+getloc()]
 params = dict(arg.split("=", 1) for arg in argv)
 params['public_key'] = PK
 params.setdefault('ts', str(int(time.time())))
 query = "&".join(f"{key}={value}" for key, value in sorted(params.items())).encode()
 params['sig'] = b64encode(hmac.new(SK.encode(), query, hashlib.sha1).digest()).decode()
 return str(urlencode(params))

def verify():
 Note=open(r'C:\weather\net.txt')
 coding=Note.read()
 Note.close()
 enco=re.findall('\n(.*?);',coding)[0].strip()

 Note=open('C:\weather\wea.txt')
 codi=Note.read()
 Note.close()
 deco=re.findall('你(.*?);',codi)[0].strip()

 lk=str(deco)
 numcode=""
 numcode=lk[12]+lk[1]+lk[5]+lk[6]+lk[0]+lk[11]+lk[2]+lk[9]+lk[3]+lk[8]+lk[14]

 numcod=str(numcode)

 keyw=""

 for i in range (0,11):
    if numcod[i]=="0":
        keyw=keyw+"c4hfoq"
    elif numcod[i]=="1":
        keyw=keyw+"rhuw"
    elif numcod[i]=="2":
        keyw=keyw+"q9cn6"
    elif numcod[i]=="3":
        keyw=keyw+"qp34ox"
    elif numcod[i]=="4":
        keyw=keyw+"nieol"
    elif numcod[i]=="5":
        keyw=keyw+"mo1aq7"
    elif numcod[i]=="6":
        keyw=keyw+"alzmc"
    elif numcod[i]=="7":
        keyw=keyw+"i0vm"
    elif numcod[i]=="8":
        keyw=keyw+"e5p2y"
    elif numcod[i]=="9":
        keyw=keyw+"zx8c"

 if enco!=keyw:
  makerr()

def getH(p,t):
 if float(p)<9998 and float(t)<9998:
  P_0=101.325
  P=float(p)/10.0
  T=float(t)
  H=((pow((P_0/P),(1/5.257))-1)*(T+273.15))/0.0065
 else:
  Note=open('C:\weather\latitude.txt')
  llaa=Note.read()
  Note.close()
  Note=open('C:\weather\longitude.txt')
  lloo=Note.read()
  Note.close()
  llaat=re.findall('(.*?)°N',llaa)[0]
  lloon=re.findall('(.*?)°E',lloo)[0]
  ah=float(llaat)
  oh=float(lloon)
  if ah<=55.0 and ah>40.0 and oh<=130.0 and oh>120.0:
    H = 200.0
  elif ah<=40.0 and ah>30.0 and oh<=125.0 and oh>113.0:
    H = 40.0
  elif ah<=30.0 and ah>4.0 and oh<=125.0 and oh>110.0:
    H = 150.0
  elif ah<=55.0 and ah>40.0 and oh<=120.0 and oh>70.0:
    H = 1200.0
  elif ah<=40.0 and ah>30.0 and oh<=113.0 and oh>102.0:
    H = 1500.0
  elif ah<=40.0 and ah>26.5 and oh<=102.0 and oh>90.0:
    H = 4000.0
  elif ah<=35.0 and ah>25.0 and oh<=90.0 and oh>70.0:
    H = 4000.0
  elif ah<=53.0 and ah>35.0 and oh<=90.0 and oh>70.0:
    H = 1200.0
  elif ah<=30.0 and ah>20.0 and oh<=110.0 and oh>100.0:
    H = 2500.0
 return float(H)
 
def sundata(tem,pre,tim):
 sunlist=[]
 Note=open('C:\weather\latitude.txt')
 llaa=Note.read()
 Note.close()
 Note=open('C:\weather\longitude.txt')
 lloo=Note.read()
 Note.close()
 llaat=re.findall('(.*?)°N',llaa)[0]
 lloon=re.findall('(.*?)°E',lloo)[0]
 ah=float(llaat)
 oh=float(lloon)
 sun = ephem.Sun()
 observer = ephem.Observer()
 observer.lat=str(ah)
 observer.lon=str(oh)
 if float(tem)<9998:
  observer.temp = float(tem)
 else:
  observer.temp = 15.0
 if float(pre)<9998:
  observer.pressure = float(pre)
 else:
  observer.pressure = 1000.0
 observer.date=tim
 observer.elevation =getH(pre,tem)
 sun.compute(observer)
 current_sun_alt = sun.alt
 an=float(current_sun_alt)
 if an>=0.0:
  sunlist.append('D')
 else:
  sunlist.append('N')
 sunlist.append(an)
 yearr=str(tim)[0]+str(tim)[1]+str(tim)[2]+str(tim)[3]
 yea=int(yearr)
 mont=str(tim)[5]+str(tim)[6]
 mon=int(mont)
 datte=str(tim)[8]+str(tim)[9]
 datt=int(datte)
 targetDay = datetime.date(yea, mon, datt)
 dayti=targetDay - datetime.date(targetDay.year - 1, 12, 31)
 N=int(dayti.days)
 N_0=79.6764+0.2422*(yea-1985)-int((yea-1985)/4)
 ti=N-N_0
 th=2*math.pi*ti/365.2422
 ER=1.000423+0.032359*math.sin(th)+0.000086*math.sin(2*th)-0.008349*math.cos(th)+0.000115*math.cos(2*th)
 sunlist.append(ER)
 sunlist.append(mon)
 return sunlist

def getcw():
 lis = []
 url='https://api.seniverse.com/v3/weather/now.json?'+key()
 response=requests.get(url)
 data111=response.json()
 data11=json.loads(json.dumps(data111))
 data1=data11['results'][0]['now']
 cw=isdat(data1['text'])
 tem=isdat(data1['temperature'])
 if "雨" in str(cw) or "雪" in str(cw) or "雹" in str(cw) or "霰" in str(cw):
  ra=1
 else:
  ra=0
 feel=isdat(data1['feels_like'])
 pre=isdat(data1['pressure'])
 lis.append(isdat(data1['pressure']))
 hu=isdat(data1['humidity'])
 if(isdat(data1['wind_direction'])=='9999'):
  wd='9999'
 else:
  wd=data1['wind_direction']+'风'
 if(isdat(data1['wind_speed'])=='9999'):
  ws='9999'
  f=9999
 else:
  ws=str(float(data1['wind_speed']))
  f=float(data1['wind_speed'])
 wl='暂无数据'
 uv='暂无数据'
 vis=isdat(data1['visibility'])
 udd=data11['results'][0]['last_update']
 upd=''
 for i in range (0,16):
     upd=upd+udd[i]
 ud='你'+upd+';'

 if float(f)<=0.72:
    wl='0级'
 elif float(f)>0.72 and float(f)<=5.4:
    wl='1级'
 elif float(f)>5.4 and float(f)<=11.88:
    wl='2级'
 elif float(f)>11.88 and float(f)<=19.44:
    wl='3级'
 elif float(f)>19.44 and float(f)<=28.44:
    wl='4级'
 elif float(f)>28.44 and float(f)<=38.52:
    wl='5级'
 elif float(f)>38.52 and float(f)<=49.68:
    wl='6级'
 elif float(f)>49.68 and float(f)<=61.56:
    wl='7级'
 elif float(f)>61.56 and float(f)<=74.52:
    wl='8级'
 elif float(f)>74.52 and float(f)<=87.84:
    wl='9级'
 elif float(f)>87.84 and float(f)<=102.24:
    wl='10级'
 elif float(f)>102.24 and float(f)<=117.36:
    wl='11级'
 elif float(f)>117.36 and float(f)<=132.84:
    wl='12级'
 elif float(f)>132.84 and float(f)<=149.04:
    wl='13级'
 elif float(f)>149.04 and float(f)<=165.96:
    wl='14级'
 elif float(f)>165.96 and float(f)<=183.24:
    wl='15级'
 elif float(f)>183.24 and float(f)<=201.6:
    wl='16级'
 elif float(f)>201.6 and float(f)<=220.32:
    wl='17级'
 elif float(f)>220.32 and float(f)<=9998.9:
    wl='大于17级'

 cl=float(isdat(data1['clouds']))
 if(isdat(data1['clouds'])!='9999'):
    Note=open('C:\weather\wp\cl.txt',mode='w')
    Note.write(data1['clouds']+'\n')
    Note.close()

 datalis=sundata(tem,pre,datetime.datetime.utcnow())
 l_1=datalis[0]
 h_1=datalis[1]
 dis=1/float(datalis[2])
 mon=datalis[3]

 if float(tem)<9998 and float(hu)<9998 and float(ws)<9998:
     T=float(tem)
     V=float(ws)/3.60
     RH=float(hu)
     e=RH/100*6.105*math.exp(17.27*T/(237.7+T))
     AT=1.07*T+0.2*e-0.65*V-2.7
     if cl<9998:
         Mc=cl/100.0
         H=getH(pre,tem)
         a_0=0.00004*H+0.65
         yt=0.0450
         if mon==1:
             yt=0.0425
         if mon==2:
             yt=0.0432
         if mon==3:
             yt=0.0433
         if mon==4:
             yt=0.0468
         if mon==5:
             yt=0.0498
         if mon==6:
             yt=0.0500
         if mon==7:
             yt=0.0490
         if mon==8:
             yt=0.0504
         if mon==9:
             yt=0.0469
         if mon==10:
             yt=0.0451
         if mon==11:
             yt=0.0429
         if mon==12:
             yt=0.0416          
         QA=1367*math.sin(h_1)*float(dis)
         Q=QA*a_0
         Quv=yt*Q*(1-0.9*Mc)
         if float(vis)<10:
            if float(vis)<1:
             Quv=Quv*0.7
            else:
             Quv=Quv*0.8
         U=float(Quv)
         if U<8:
          uv='最弱'
         elif U>=8 and U<20:
          uv='弱'
         elif U>=20 and U<33:
          uv='中等'    
         elif U>=33 and U<37:
          uv='较强'  
         elif U>=37 and U<42.65:
          uv='强'  
         else:
          uv='很强'
     T_1=round(AT,1)
     feel=str(T_1)
     
 Note=open('C:\weather\mod.txt')
 mo=str(Note.read()).strip()
 Note.close()
 Note=open(r'C:\weather\wp\cl.txt')
 cloudd=str(Note.read()).strip()
 cloud=float(cloudd)
 Note.close()

 if mo=="1":
  if "晴" in str(cw) or "云" in str(cw) or "阴" in str(cw) or "雨" in str(cw) or "雪" in str(cw):
   if "晴" in str(cw):
    l_2="1"
   elif "云" in str(cw):
    l_2="2"    
   elif "阴" in str(cw):
    l_2="3"
   else:
    if "夹" in str(cw):
     if float(tem)>=0.0:
       l_2="4"
     else:
       l_2="5"
    else:
     if "雨" in str(cw):
       l_2="4"
     else:
       l_2="5"
  elif "9999" in str(cw):
   if float(ra)==0.0:
     if cloud<=30.0:
      l_2="1"
      cw="晴"
     elif cloud>30.0 and cloud<=70.0:
      l_2="2"
      cw="多云"
     elif cloud>70.0:
      l_2="3"
      cw="阴"
   elif float(ra)>=9998.9:
     #不发送指令
     l_2="0"
   else:
     if float(tem)>=0.0:
       l_2="4"
       cw="雨"
     else:
       l_2="5"
       cw="雪"
  else:
   if float(ra)==0.0:
     if cloud<=30.0:
      l_2="1"
     elif cloud>30.0 and cloud<=70.0:
      l_2="2"
     elif cloud>70.0:
      l_2="3"
   elif float(ra)>=9998.9:
     #不发送指令
     l_2="0"
   else:
     if float(tem)>=0.0:
       l_2="4"
     else:
       l_2="5"
 else:
  if "晴" in str(cw) or "云" in str(cw) or "阴" in str(cw) or "雨" in str(cw) or "雪" in str(cw) or "9999" in str(cw):

   if float(ra)==0.0:
     if cloud<=30.0:
      l_2="1"
      cw="晴"
     elif cloud>30.0 and cloud<=70.0:
      l_2="2"
      cw="多云"
     elif cloud>70.0:
      l_2="3"
      cw="阴"
   elif float(ra)>=9998.9:
     if str(cw)=="晴":
      l_2="1"
     elif "云" in str(cw):
      l_2="2"
     elif str(cw)=="阴":
      l_2="3"
     elif "雨" in str(cw) or "雪" in str(cw):
      if "夹" in str(cw):
       if float(tem)>=0.0:
        l_2="4"
       else:
        l_2="5"
      else:
        if "雨" in str(cw):
          l_2="4"
        else:
          l_2="5"
     else:
      #不发送指令
      l_2="0"
   else:
    if "雨" in str(cw) or "雪" in str(cw):
     if "夹" in str(cw):
      if float(tem)>=0.0:
       l_2="4"
      else:
       l_2="5"
     else:
      if "雨" in str(cw):
       l_2="4"
      else:
       l_2="5"
    else:
     if float(tem)>=0.0:
       l_2="4"
       if "雨" in str(cw):
        cw=cw
       else:
        cw="雨"
     else:
       l_2="5"
       if "雪" in str(cw):
        cw=cw
       else:
        cw="雪"

  else:
 
   if float(ra)==0.0:
     if cloud<=30.0:
      l_2="1"
     elif cloud>30.0 and cloud<=70.0:
      l_2="2"
     elif cloud>70.0:
      l_2="3"
   elif float(ra)>=9998.9:
     #不发送指令
     l_2="0"
   else:
     if float(tem)>=0.0:
       l_2="4"
     else:
       l_2="5"


 Note=open(r'C:\weather\wea.txt',mode='w')
 Note.write(cw+'\n你'+tem+'\n你'+feel+'\n你'+pre+'\n你'+hu+'\n'+wd+'\n你'+ws+'\n你'+wl+'\n你'+vis+'\n'+uv+'\n'+ud+'\n')
 Note.close()

 Note=open('C:\weather\wp\pa.txt',mode='w')
 Note.write(l_1+'\n'+l_2+'\n')
 Note.close()

def gethr():
 url='https://api.seniverse.com/v3/weather/hourly.json?'+key()
 data44=requests.get(url)
 data4=data44.text
 timelist=re.findall('time":"(.*?)","text',data4)
 temlist=re.findall('temperature":"(.*?)","',data4)
 tlist=[]
 dtlist=[]
 i=0
 for t in timelist:
     tt=re.findall('T(.*?):',t)[0]
     tlist.append(tt)
     utc = str(t)
     UTC_FORMAT = "%Y-%m-%dT%H:%M:%S+08:00"
     utc_time = datetime.datetime.strptime(utc, UTC_FORMAT)
     local_time = utc_time + datetime.timedelta(hours=-8)
     utct=str(local_time).replace("-", "/")
     flag=sundata(float(temlist[i]),1000,str(utct))[0]
     dtlist.append(flag)
     i+=1
 piclist=re.findall('code":"(.*?)","',data4)
 Note=open(r'C:\weather\24.txt',mode='w')
 Note.write('\n')
 Note.close()
 for i in range (0,24):
  Note=open(r'C:\weather\24.txt',mode='a')
  Note.write(tlist[i]+'\n'+piclist[i]+'\n'+dtlist[i]+'\n'+temlist[i]+'\n')
  Note.close()

def getal():
 url='https://api.seniverse.com/v3/weather/alarm.json?'+key()
 data22=requests.get(url)
 data2=data22.text
 typelist=re.findall('type":"(.*?)","',data2)
 levellist=re.findall('level":"(.*?)","',data2)
 cc=""
 for x, y in zip(typelist, levellist):
  if f'{x}{y}' in str(cc):
    cc=cc
  else:
    cc=cc + f'{x}{y}'
 if cc=="":
     cc="99999999"
 Note=open(r'C:\weather\al.txt',mode='w')
 Note.write(cc+'\n')
 Note.close()
 
def getfor():
 url='https://api.seniverse.com/v3/weather/daily.json?'+key()
 data33=requests.get(url)
 data3=data33.text
 yearlist=re.findall('"date":"(.*?)","',data3)
 weeklist=[]
 monthlist=[]
 datelist=[]
 for dea in yearlist:
     weeklist.append(wek(dea))
     monthlist.append(str(dea).split('-',2)[1])
     datelist.append(str(dea).split('-',2)[2])
 daylist=re.findall('"text_day":"(.*?)","',data3)
 wdlist=re.findall('"wind_direction":"(.*?)","',data3)
 wllist=re.findall('"wind_scale":"(.*?)","',data3)
 dtlist=re.findall('"high":"(.*?)","',data3)
 ntlist=re.findall('"low":"(.*?)","',data3)
 nightlist=re.findall('"text_night":"(.*?)","',data3)
 hulist=re.findall('"humidity":"(.*?)"}',data3)
 Note=open('C:\weather\data.txt',mode='w')
 Note.write('\n')
 Note.close()
 for i in range (0,15):
      Note=open('C:\weather\data.txt',mode='a')
      Note.write('你'+weeklist[i]+'\n你'+monthlist[i]+'\n你'+datelist[i]+'\n你'+daylist[i]+'\n你'+wdlist[i]+'\n你'+wllist[i]+'级\n你'+dtlist[i]+'℃\n你'+ntlist[i]+'℃\n你'+nightlist[i]+'\n你湿度:'+hulist[i]+'\n你%\n')
      Note.close()



if __name__== "__main__" :
 try:
     verify()
 except:
     makerr()
 Note=open(r'C:\weather\net.txt',mode='w')
 Note.write('1\nnieolzx8cc4hfoqq9cn6rhuwq9cn6i0vmzx8cc4hfoqq9cn6;\n')
 Note.close()
 try:
  getcw()
  gethr()
  getfor()
  Note=open(r'C:\weather\net.txt',mode='w')
  Note.write('0\nnieolzx8cc4hfoqq9cn6rhuwq9cn6i0vmzx8cc4hfoqq9cn6;\n')
  Note.close()
  getal()
 except:
  makerr()
