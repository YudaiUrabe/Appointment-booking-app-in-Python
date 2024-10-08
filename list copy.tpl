<!DOCTYPE HTML>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>予約一覧</title>
</head>
<body>
<h2>予約一覧</h2>
<style>
table,th,td{
    border:1px solid black;
}
</style>
%numA=int("0") 
%numB=int("0")
%numC=int("0")
    %for d in data5A:
    %if numA==0:
　 　<h1>会議室A</h1>
    %end
    <table border="solid">
        %if numA==0:
        <tr>
        <th>開始時間</th>
        <th>終了時間</th>
        <th>利用者名</th>
        <th>利用目的</th>
        </tr>
        %end
        <tr>
        <td>{{d["year"]}}-{{d["month"]}}-{{d["day"]}} {{d["time_hour"]}}:{{d["time_min"]}}</td>
        <td>{{d["period"]}}</td>
        <td>{{d["name"]}}</td>
        <td>{{d["purpose"]}}</td>
        </tr>
    %numA=numA+1
    </table>
    %end

    %for d in data5B:
    %if numB==0:
　 　<h1>会議室B</h1>
    %end
    <table border="solid">
        %if numB==0:
        <tr>
        <th>開始時間</th>
        <th>終了時間</th>
        <th>利用者名</th>
        <th>利用目的</th>
        </tr>
        %end
        <tr>
        <td>{{d["year"]}}-{{d["month"]}}-{{d["day"]}} {{d["time_hour"]}}:{{d["time_min"]}}</td>
        <td>{{d["period"]}}</td>
        <td>{{d["name"]}}</td>
        <td>{{d["purpose"]}}</td>
        </tr>
    %numB=numB+1
    </table>
    %end

    %for d in data5C:
    %if numC==0:
　 　<h1>会議室C</h1>
    %end
    <table border="solid">
        %if numC==0:
        <tr>
        <th>開始時間</th>
        <th>終了時間</th>
        <th>利用者名</th>
        <th>利用目的</th>
        </tr>
        %end
        <tr>
        <td>{{d["year"]}}-{{d["month"]}}-{{d["day"]}} {{d["time_hour"]}}:{{d["time_min"]}}</td>
        <td>{{d["period"]}}</td>
        <td>{{d["name"]}}</td>
        <td>{{d["purpose"]}}</td>
        </tr>
    %numC=numC+1
    </table>
    %end

%print(numA,numB,numC)
%if numA==0 and numB==0 and numC==0:
<p>現在、まだ予約が入っておりません。</p> 
%else:
<p><a href="/entry">続けて予約する</a></p>
%end
<p><a href="/static/opening.html">最初の画面へ</a></p>

</body>
</html>