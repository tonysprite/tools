#!/bin/bash
echo "create table "$1"."$3$2" (
                memberid bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '会员uid',
                tlStatus int(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
                tlCreated datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
                tlUpdated datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
                tlDeleted datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '删除时间',
                UpdateTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                PRIMARY KEY (memberid),
				KEY idx_UpdateTime (UpdateTime)
              ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='example table desc';

"

