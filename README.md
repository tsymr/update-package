<SCRIPT language=JavaScript>
newDays=new Array()
newDays[0]="日"
newDays[1]="一"
newDays[2]="二"
newDays[3]="三"
newDays[4]="四"
newDays[5]="五"
newDays[6]="六"
the_date=new Date()
with(the_date)
document.write(getYear()+"年"+(getMonth()+1)+"月"+getDate()+"日 "+"星期"+newDays[getDay()])
-->
</SCRIPT>
