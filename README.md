== README

Twilioでテストコールを行うRailsアプリケーションです。

call.rb モデル内の環境変数を各自の環境に合わせて設定すれば、Twilioでテストコールできます。

## Twilioアカウントの開設
Twilioアカウントの開設については、[日本のTwilio公式サイト](http://twilio.kddi-web.com/)を参照してください。

## サンプルの動き
このサンプルでは、以下のことを行います。

* Railsのコンソールから Call.voice_message メソッドを呼び出すことで、
* Twilioから電話先にコールし、
* 着信したら、「サンプル音楽を流します」というメッセージを流した後、音楽を流し

ます。

    $ rails console
    > Call.voice_message

## XMLファイルサンプル
call.rb の ENV['TWILIO_XML_URL'] は、コール着信後に流すメッセージと音楽をXML形式で定義しています。
↓ はXMLファイルのサンプルです。

```
<?xml version="1.0" encoding="UTF-8"?>
<Response>
    <Say language="ja-jp">サンプル音楽を流します</Say>
    <Play>http://example.com/xxx.mp3</Play>
</Response>
```

## コードの解説
このリポジトリは、マーケティング技研の連載「[第2回 アナウンスを流す](http://www.marketing-giken.com/article/twilio_rails_callcenter_2)」のサンプルです。
詳しい解説は、前掲URLをご覧ください。
