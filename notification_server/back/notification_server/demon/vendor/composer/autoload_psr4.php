<?php

// autoload_psr4.php @generated by Composer

$vendorDir = dirname(dirname(__FILE__));
$baseDir = dirname($vendorDir);

return array(
    'Workerman\\' => array($vendorDir . '/workerman/workerman'),
    'WebSocket\\' => array($vendorDir . '/textalk/websocket/lib'),
    'Predis\\' => array($baseDir . '/../../predis-1.1/src'),
    'NotificationDemon\\' => array($baseDir . '/src'),
    'Channel\\' => array($vendorDir . '/workerman/channel/src'),
    '' => array($baseDir . '/../../../additional'),
);
