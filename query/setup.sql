/* 
 書式 
 GRANT 権限 ON データベース.テーブル TO 'ユーザ' @'ホスト';
 */
/* 例1)「mydb」の全テーブルに対する全ての権限を付与 */
-- GRANT all ON mydb.* TO user @'%';
/* 例2)「mydb」の「全TABLE」に対するSELECT文、INSERT文、UPDATE文、DELETE文の実行権限を付与*/
-- GRANT SELECT, INSERT, UPDATE, DELETE ON mydb.* TO user @'%';
/* 例3)すべてのデータベースの全テーブルに対する全ての権限を付与 */
GRANT all ON *.* TO 'user' @'%';

-- 権限の変更をデータベースに反映
FLUSH PRIVILEGES;

/* 作成したユーザの権限を確認 */
SHOW GRANTS FOR user@'%';
