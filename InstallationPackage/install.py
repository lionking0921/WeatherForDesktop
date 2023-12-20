# -*- coding: utf-8 -*-
# coding: utf-8
import os
import winreg
import zipfile
import tkinter
import pythoncom
from win32com.shell import shell
from win32com.shell import shellcon
from tkinter import *
from tkinter import scrolledtext
from tkinter import messagebox

root=tkinter.Tk()
root.title('天气软件使用条款')
label = Label(root, text='天气软件使用条款',bg='black', fg='yellow',font='Verdana 36 bold',width=12, height=1,relief='raised')
label.pack()  
root.geometry('1200x720')
root.resizable(0,0)

def get_desktop():
  key = winreg.OpenKey(winreg.HKEY_CURRENT_USER,r'Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders')
  return winreg.QueryValueEx(key, "Desktop")[0]

def set_shortcut():  
    try:
        filename = r"C:\weather\appverweather0000.exe"  
        iconname = ""
        lnkname = str(get_desktop()) + r"\天气.lnk"  

        shortcut = pythoncom.CoCreateInstance(
            shell.CLSID_ShellLink, None,
            pythoncom.CLSCTX_INPROC_SERVER, shell.IID_IShellLink)
        shortcut.SetPath(filename)

        shortcut.SetWorkingDirectory(r"C:\weather") 
        shortcut.SetIconLocation(iconname, 0)  
        if os.path.splitext(lnkname)[-1] != '.lnk':
            lnkname += ".lnk"
        shortcut.QueryInterface(pythoncom.IID_IPersistFile).Save(lnkname, 0)

        return True
    except Exception as e:
        messagebox.showerror("错误", "创建快捷方式失败！")
        messagebox.showerror("错误", e.args)
        return False

def unzip_file(zip_src, dst_dir):
    r = zipfile.is_zipfile(zip_src)
    if r:     
        fz = zipfile.ZipFile(zip_src, 'r')
        for file in fz.namelist():
            fz.extract(file, dst_dir)    
        os.system("start C:/weather/kaishi.exe")
        set_shortcut()
        os.startfile("a.bat")    
        messagebox.showinfo("成功", "安装成功！程序将在30秒后运行。")
    else:
        messagebox.showerror("错误", "请勿重复安装！")
def ins():
 try:
  name = "weather.zip"  
  unzip_file(zip_src="./"+name, dst_dir="C:/")
  os.remove("weather.zip")
 except:
  messagebox.showerror("错误", "安装失败！请联系作者QQ：2694336026")

def ag():
 root.destroy()
 ins()

def Agree(root):
    btn=tkinter.Button(root,text='同意并安装',font=('黑体',14),height=1,command=ag)
    btn.place(x=1070,y=675)

def Refuse(root):
    btn=tkinter.Button(root,text='不同意并退出',bg='red',fg='black',font=('黑体',14),height=1,command=root.destroy)
    btn.place(x=10,y=675)

def Scroll(root):
    scroll=scrolledtext.ScrolledText(root,width=117,height=30,font=('黑体',14))
    scroll.place(x=10,y=90)
    
    scroll.insert(tkinter.END,"欢迎您下载并使用天气（桌面天气）软件，请您务必遵守以下条款，以免给您带来不必要的麻烦。\n")
    scroll.insert(tkinter.END,"一.本协议的适用范围\n")
    scroll.insert(tkinter.END,"本协议是您作为用户与软件作者之间关于下载、安装、使用本软件及相关服务所订立的协议。\n")
    scroll.insert(tkinter.END,"二.软件性质\n")
    scroll.insert(tkinter.END,"天气（桌面天气）软件（以下简称“本软件”）是运行于Windows10及以上版本系统的非商业性质的软件，绝不承接任何广告，所有功能免费使用。本软件的天气数据来源于心知天气（以下称作“数据提供方”）。应数据提供方的要求，本软件仅供用户个人查询天气使用，请勿用于商业用途或非法用途。\n")
    scroll.insert(tkinter.END,"三.软件的获取\n")
    scroll.insert(tkinter.END,"用户可直接从作者个人网站上下载最新版本的天气（桌面天气）软件，也可以联系软件作者获取本软件。如果用户不从上述渠道获取本软件，软件作者无法保证该软件能够正常使用，并对因此给用户造成的损失不予负责。\n")
    scroll.insert(tkinter.END,"四.软件的安装与卸载\n")
    scroll.insert(tkinter.END,"1.安装前，请务必认真阅读本条款，同意条款约束后方可安装。\n")
    scroll.insert(tkinter.END,"2.安装前，请确保C盘的空间大于200M，否则无法正常安装。\n")
    scroll.insert(tkinter.END,"3.本软件安装后会在C盘的根目录下创建weather文件夹，请用户在安装前对C盘内的同名文件夹进行重命名或文件备份，否则安装后造成的文件丢失后果由用户承担。\n")
    scroll.insert(tkinter.END,"4.本软件安装后会在任务计划程序创建weatherhook任务，请用户在安装前对同名任务进行更名，否则造成损失均由用户承担。\n")
    scroll.insert(tkinter.END,"5.安装时，如果电脑弹出提问框，一律选择“是”才能安装成功。\n")
    scroll.insert(tkinter.END,"6.当系统提示安装完成后，如果弹窗不会自动消失，可手动关闭所有弹窗，等待主程序启动即可。\n")
    scroll.insert(tkinter.END,"7.若之前安装过，只是更新的话，安装新版本之前先在菜单中点击“关闭程序”按钮再安装新版本。\n")
    scroll.insert(tkinter.END,"8.若安装或更新失败，请先尝试在菜单中点击“关闭程序”按钮，若无法解决请手动结束天气软件的进程，仍然无法解决的，请联系作者。\n")
    scroll.insert(tkinter.END,"9.卸载软件请在菜单-关于此软件-卸载软件中进行卸载操作，如果系统有弹窗一律选择“是”才能卸载成功。\n")
    scroll.insert(tkinter.END,"五.软件的更新\n")
    scroll.insert(tkinter.END,"1.为改善用户体验，完善服务内容，软件作者将不断努力修复漏洞和开发新的功能，并为用户不时提供软件更新。\n")
    scroll.insert(tkinter.END,"2.为了保证本软件及服务的安全性和功能的一致性，软件作者有权不经向用户特别通知而对软件进行更新，或者对软件的部分功能效果进行改变或限制。\n")
    scroll.insert(tkinter.END,"3.本软件新版本发布后，软件作者将可能视情况设定一定期限的过渡期，以方便用户下载最新版本。过渡期结束后，旧版本的软件可能无法使用。软件作者不保证旧版本软件继续可用及相应的服务，请随时核对并下载最新版本。\n")
    scroll.insert(tkinter.END,"4.用户可在菜单-关于此软件-检查更新中下载最新版本的天气软件。\n")
    scroll.insert(tkinter.END,"六.软件使用时的注意事项\n")
    scroll.insert(tkinter.END,"1.本软件仍在不断完善中，其中的部分功能仍处在测试阶段。用户使用本软件即视为愿意承受软件出错所造成的损失。\n")
    scroll.insert(tkinter.END,"2.使用本软件时，请勿删除、拆散或修改C盘根目录下weather文件夹内的任何文件和文件夹，否则软件将无法正常运行，由此造成的损失由用户承担。\n")
    scroll.insert(tkinter.END,"七.隐私声明\n")
    scroll.insert(tkinter.END,"本软件除了在获取天气数据（动态数据）时需要与外界服务器进行信息交互，其他的所有数据均保存在用户电脑中，仅涉及本地机内信息交互，这些数据既不会被本软件上传到服务器，也不会被软件作者收集，请您放心使用。需要强调的是，请注意在因特网上不存在“完善的安全措施”，因此用户信息可能非因本软件的原因而丢失，包括但不限于他人非法利用用户资料，用户下载安装的其他软件或访问的其他网站中可能含有病毒、木马程序或其他恶意程序，威胁用户的终端设备信息和数据安全，继而影响本软件的正常使用等。对此，软件作者不承担任何责任。\n")
    scroll.insert(tkinter.END,"八.用户对数据提供方有以下侵权行为，所有责任均由用户承担，软件作者无责\n")
    scroll.insert(tkinter.END,"1.用户将本软件用于商业用途或非法用途。\n")
    scroll.insert(tkinter.END,"2.用户将数据提供方的天气数据用于商业用途或非法用途，包括但不限于转载、链接、转帖或复制发表等。\n")
    scroll.insert(tkinter.END,"3.用户伪造、变更、删减天气数据或传播不实天气数据，无论这些行为是否为商业目的。\n")
    scroll.insert(tkinter.END,"4.用户恶意破解本软件的请求频率限制机制，通过各种手段（包括但不限于使用程序、软件、插件、脚本、外挂等）利用本软件的程序（段）或代码（段）对数据提供方的服务器发动DOS攻击、DDOS攻击或实施其他黑客行为。\n")
    scroll.insert(tkinter.END,"5.用户自行或者授权他人、第三方软件对数据提供方服务器及其组件,模块、数据进行干扰。\n")
    scroll.insert(tkinter.END,"6.用户有其他对数据提供方构成侵权的行为。\n")
    scroll.insert(tkinter.END,"九.除非法律允许或软件作者书面同意，用户有以下行为，软件作者保留追究用户法律责任的权利\n")
    scroll.insert(tkinter.END,"1.用户将本软件用于商业用途或非法用途。\n")
    scroll.insert(tkinter.END,"2.用户对本软件进行反向工程、反向汇编、反向编译，或者以其他方式尝试发现本软件的源代码。\n")
    scroll.insert(tkinter.END,"3.用户删除或修改本软件及其副本上关于著作权的信息。\n")
    scroll.insert(tkinter.END,"4.用户将本软件上传到任何下载平台，无论这些行为是否为商业目的。\n")
    scroll.insert(tkinter.END,"7.用户对本软件拥有知识产权的内容进行使用、出租、出借、复制、修改、链接、转载、汇编、发表、出版、建立镜像站点等。\n")
    scroll.insert(tkinter.END,"8.通过修改或伪造软件运行中的指令、数据，增加、删减、变动软件的功能或运行效果，或者将用于上述用途的软件、方法进行运营或向公众传播，无论这些行为是否为商业目的。\n")
    scroll.insert(tkinter.END,"9.用户有其他对软件作者构成侵权的行为。\n")
    scroll.insert(tkinter.END,"十.违约处理\n")
    scroll.insert(tkinter.END,"1.用户理解并同意，如有违反协议中的条款，数据提供方或软件作者将依法追究责任人的一切法律责任，包括但不限于：停止侵害、消除影响、赔礼道歉、赔偿损失等民事责任；并承担有关行政责任；构成犯罪的，依法追究刑事责任。\n")
    scroll.insert(tkinter.END,"2.用户理解并同意，因用户违反本协议或相关服务条款的规定，导致或产生第三方主张的任何索赔、要求或损失用户应当独立承担责任:软件作者因此遭受损失的，用户也应当一并赔偿。\n")
    scroll.insert(tkinter.END,"十一.其他\n")
    scroll.insert(tkinter.END,"1.用户使用本软件即视为您已阅读并同意受本协议的约束。软件作者有权在必要时修改本协议条款。用户可以在本软件的最新版本中或最新版本的下载页面中查阅相关协议条款。本协议条款变更后，如果用户继续使用本软件，即视为用户已接受修改后的协议。如果用户不接受修改后的协议，应当停止使用本软件。\n")
    scroll.insert(tkinter.END,"2.本协议的成立、生效、履行、解释及纠纷解决，适用中华人民共和国大陆地区法律（不包括冲突法）。\n")
    scroll.insert(tkinter.END,"3.若用户和软件作者或数据提供方之间发生任何纠纷或争议，首先应友好协商解决:协商不成的，用户同意将纠纷或争议提交本协议签订地有管辖权的人民法院管辖。\n")
    scroll.insert(tkinter.END,"4.本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵义解释的依据。\n")
    scroll.insert(tkinter.END,"5.本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。\n\n")
    scroll.insert(tkinter.END,"除非用户已阅读并接受本协议的所有条款，否则用户无权下载、安装或使用本软件及相关服务。用户的下载、安装、使用等行为即视为已阅读并同意上述的约束。")

    scroll.config(state=DISABLED)


if __name__=='__main__':
    Scroll(root)
    Agree(root)
    Refuse(root)
    root.mainloop()
