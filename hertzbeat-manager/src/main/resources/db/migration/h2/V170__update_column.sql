-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--   http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied.  See the License for the
-- specific language governing permissions and limitations
-- under the License.

-- ensure every sql can rerun without error

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS app VARCHAR(255);
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN app;

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS metric VARCHAR(255);
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN metric;

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS field VARCHAR(255);
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN field;

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS preset boolean;
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN preset;

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS priority integer;
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN priority;

ALTER TABLE HZB_ALERT_DEFINE ADD COLUMN IF NOT EXISTS tags VARCHAR(255);
ALTER TABLE HZB_ALERT_DEFINE DROP COLUMN tags;
