# candlepin_log_parse
Candlepin Log Parser


Below the output example
```
Welcome
Please type CTRL+F and search for '##'. This will switch you directly to the section (200, 401, 400, etc).

First Time ...: 2019-09-07 03:45:05,521
Last Time ....: 2019-09-07 15:34:01,455

 451009 status=200
    129 status=204
    105 status=400
     15 status=202
      1 status=403

## 204

-- edf0c142-9efb-4bf5-b43b-6b4ba8639631
2019-09-07 03:46:43,354 [thread=http-bio-8443-exec-96] [req=edf0c142-9efb-4bf5-b43b-6b4ba8639631, org=, csid=33a5bcbe] INFO  org.candlepin.common.filter.LoggingFilter - Request: verb=PUT, uri=/candlepin/consumers/1c928f46-2370-4691-83eb-210d0b42bd68
2019-09-07 03:46:43,375 [thread=http-bio-8443-exec-96] [req=edf0c142-9efb-4bf5-b43b-6b4ba8639631, org=esi, csid=33a5bcbe] INFO  org.candlepin.resource.ConsumerResource - Updating facts.
2019-09-07 03:46:43,570 [thread=http-bio-8443-exec-96] [req=edf0c142-9efb-4bf5-b43b-6b4ba8639631, org=esi, csid=33a5bcbe] INFO  org.candlepin.common.filter.LoggingFilter - Response: status=204, content-type="null", time=216


-- 7d7c2945-6b7f-438c-8f49-97e868ad78de
2019-09-07 03:47:01,205 [thread=http-bio-8443-exec-71] [req=7d7c2945-6b7f-438c-8f49-97e868ad78de, org=, csid=e9316bde] INFO  org.candlepin.common.filter.LoggingFilter - Request: verb=PUT, uri=/candlepin/consumers/537f65f7-f786-4937-99b1-ddb26688537d
2019-09-07 03:47:01,210 [thread=http-bio-8443-exec-71] [req=7d7c2945-6b7f-438c-8f49-97e868ad78de, org=esi, csid=e9316bde] INFO  org.candlepin.resource.ConsumerResource - Updating installed products.
2019-09-07 03:47:01,223 [thread=http-bio-8443-exec-71] [req=7d7c2945-6b7f-438c-8f49-97e868ad78de, org=esi, csid=e9316bde] INFO  org.candlepin.common.filter.LoggingFilter - Response: status=204, content-type="null", time=18
```
Hope this help you!

Enjoy it.
