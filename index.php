<?php
namespace zonuexe\ZoProxy;
// サブドメインで公開する場合、このパスが一階層変わります。
require_once(dirname(__FILE__).'/../../railsinstaller/php/vendor/autoload.php');
use GuzzleHttp\Client as HttpClient;
use GuzzleHttp\Psr7;
// ここはいい感じにやってね
$host_table = [
    'localhost' => [
        'host' => 'localhost',
        'port' => 4000,
        'scheme' => 'http',
    ],
    'http://nekosan0125.xsrv.jp/' => [
        'host' => 'localhost',
        'port' => 4000,
        'scheme' => 'http',
    ]
];
$request = Psr7\ServerRequest::fromGlobals();
$new_uri = $request->getUri()->withPort(80);
$key = $new_uri->getHost();
$port = $new_uri->getPort();
//if ($port !== null && !Psr7\Uri::isDefaultPort($new_uri)) {
//    $key .= ":{$port}";
//}
// コメントアウトしないとSSLがうまくいかなかった。
echo 'kokoko';

if (isset($host_table[$key])) {
    if (isset($host_table[$key]['host'])) {
        $new_uri = $new_uri->withHost($host_table[$key]['host']);
    }
    if (isset($host_table[$key]['port'])) {
        $new_uri = $new_uri->withPort($host_table[$key]['port']);
    }
    if (isset($host_table[$key]['scheme'])) {
        $new_uri = $new_uri->withScheme($host_table[$key]['scheme']);
    }
}

$client = new HttpClient;
$response = $client->send($request->withUri($new_uri), [
    'http_errors' => false,
]);

echo "<pre>";
var_dump($response);
echo "</pre>";
// foreach ($response->getHeaders() as $key => $values) {
//     if($key !== 'Transfer-Encoding'){
//         // Transfer-Encodingを除外しないと内部リダイレクトループになった。なんでだろう？
//         foreach ($values as $value) {
//             header("{$key}:{$value}");
//         }
//     }
// }
// echo $response->getBody();
?>
