DELETE FROM layer4_1_om.adapter_order
WHERE order_id in
    (
	SELECT order_id
	FROM layer4_1_om.adapter_order
	WHERE created_timestamp < now() - '2 day'::interval
	LIMIT 10000
    );

DELETE FROM layer4_1_om.adapter_idemporent
WHERE req_code in
    (
	SELECT req_code
	FROM layer4_1_om.adapter_idemporent
	WHERE created_timestamp < now() - '2 day'::interval
	LIMIT 10000
    );

DELETE FROM layer4_1_om.adapter_message
WHERE id in
    (
	SELECT id
	FROM layer4_1_om.adapter_message
	WHERE created_timestamp < now() - '2 day'::interval
	LIMIT 10000
    );
