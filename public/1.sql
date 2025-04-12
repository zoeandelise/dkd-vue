SELECT
    n.*,
    r.region_name AS region_name,
    p.partner_name AS partner_name,
    COUNT(vm.id) AS vm_count
FROM
    dkd.tb_node n
        LEFT JOIN dkd.tb_region r ON n.region_id = r.id
        LEFT JOIN dkd.tb_partner p ON n.partner_id = p.id
        LEFT JOIN dkd.tb_vending_machine vm ON n.id = vm.node_id
GROUP BY
    n.id, n.node_name, n.address, n.business_type, n.region_id, n.partner_id,
    n.create_time, n.update_time, n.create_by, n.update_by, n.remark,
    r.region_name, p.partner_name
ORDER BY
    n.id;


-- 再根据点位的局域外键region_id生成查询区域信息的sql
SELECT
    r.id,
    r.region_name,
    r.parent_id,
    r.create_time
FROM
    dkd.tb_region r
WHERE
    r.id IN (
        SELECT
            region_id
        FROM
            dkd.tb_node
    )
ORDER BY
    r.id;





