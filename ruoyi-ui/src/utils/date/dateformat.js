//将秒数转换为天时分秒格式

export function setSeconds(value) {

  var result = ""

  var sencond = parseInt(value)

  //3600秒等于60分钟等于1小时

  if(sencond > 3600 * 24){  //表示大于一天

    var day = sencond / (3600 * 24);

    sencond = sencond % (3600 * 24);    //求天数整除外剩余的秒数

    var hour = sencond / 3600;          //1小时==60分钟==3600秒，所以剩余的秒数÷3600= 得到几个小时数
    var minute = sencond % 3600 / 60;
    result = parseInt(day)+"天"+parseInt(hour)+"时";

  } else if(sencond > 3600){     //表示大于一个小时



    var hour = sencond / 3600;

    var minute = sencond % 3600 / 60;         //求小时数整除外剩余的秒数， 秒数÷60秒 = 得到几分钟

    result = parseInt(hour)+"时"+parseInt(minute)+"分";

  } else if(sencond > 60){  //表示大于一分钟



    var minute = sencond / 60;

    var sec = sencond % 60;           //求分钟数整除外剩余的秒数

    result = parseInt(minute)+"分"+parseInt(sec)+"秒";




  } else {  //不大于一天、不大于一个小时、也不大于一分钟，那就是秒数

    result = ""+parseInt(sencond)+"秒";

  }

  return result

}
export function add15MinutesToTimeString(timeString) {
  // 将时间字符串解析为 Date 对象
  var date = new Date('2000-01-01 ' + timeString);

  // 增加15分钟
  date.setMinutes(date.getMinutes() + 15);

  // 将 Date 对象转换回时间字符串，格式为 'HH:mm'
  var resultTimeString = date.toTimeString().slice(0, 5);

  return resultTimeString;
}
export function convertNumberToChineseWeek(number) {
  const chineseNumbers = ["一", "二", "三", "四", "五", "六", "日"];

  if (number >= 1 && number <= 7) {
    return chineseNumbers[number - 1];
  } else {
    return number.toString();
  }
}
