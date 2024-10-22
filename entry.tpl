<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>予約登録</title>
</head>
<body>
<p>会議室の予約をします</p>
<p>（会議室と利用目的と利用期間をすべて入力しないと送信できません）</p>
<form method="POST" action="/doreserve">
<p>使用したい会議室：
  <label><input type="radio" name="room" value="会議室A" required/>会議室A</label>
  <label><input type="radio" name="room" value="会議室B" />会議室B</label>
  <label><input type="radio" name="room" value="会議室C" />会議室C</label>
  
<p>利用者：{{name}}様</p>
<p>利用目的：<input type="text" name="purpose" required/></p>

<p><input type = "date" name="datex" min={{dt_today}} max={{dt_raigetu}} required></p>
<p>※予約は1ヶ月後までしかできません</p>

<p><select name="time_hour">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
</select>時
<select name="time_min">：
<option value="00">00</option>
<option value="30">30</option>
</select>分
から
<select name="use_time">：
<option value="30">30分</option>
<option value="60">1時間</option>
<option value="90">1時間30分</option>
<option value="120">2時間</option>
<option value="150">2時間30分</option>
<option value="180">3時間</option>
</select>
</p>
<p>※予約開始時間・予約期間は30分単位でしか受け付けません</p>
<p></p>

<input type="submit" />
</form>

</body>
</html>