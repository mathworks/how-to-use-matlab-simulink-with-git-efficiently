# リモートリポジトリを作成し、Git管理を始める
# 初期化

```matlab:Code
mkdir('local');
mkdir('remote');
```

# PC内にリモートリポジトリを作成する方法


現在のフォルダーで右クリックし、「ソース管理」「ファイルの管理...」をクリックします。




![image_0.png](create_remote_repository_md_images/image_0.png)




現れたウィンドウで、「変更」をクリックします。




![image_1.png](create_remote_repository_md_images/image_1.png)




現れたウィンドウで「+」をクリックします。




![image_2.png](create_remote_repository_md_images/image_2.png)




リモートリポジトリを作成するフォルダーを選択し、以下のようになったら「OK」をクリックします。




![image_3.png](create_remote_repository_md_images/image_3.png)




次に、サンドボックスにローカルリポジトリを作成するフォルダーパスを入力します。入力が終わったら「取得」をクリックします。




![image_4.png](create_remote_repository_md_images/image_4.png)




サンドボックスで指定したパス（ローカルリポジトリ）のフォルダーがGit管理された状態になります。




![image_5.png](create_remote_repository_md_images/image_5.png)


# ローカルリポジトリにモデルファイルを追加する


ローカルリポジトリのフォルダーに、Simulinkモデルを追加します。新規作成、もしくは、すでに作成されたモデルをコピーします。




![image_6.png](create_remote_repository_md_images/image_6.png)




この時、そのモデルファイルのGitという欄（Gitステータス）に、白丸が付いています。この状態は、そのファイルがGit管理されていない状態であることを示します。


# モデルファイルをコミットする


まず、モデルファイルを右クリックし、「ソース管理」「Gitに追加」をクリックします。




![image_7.png](create_remote_repository_md_images/image_7.png)




以下のように、Gitステータスが+マークになります。この状態はGitにトラッキングされた状態になります。




![image_8.png](create_remote_repository_md_images/image_8.png)




次に、モデルファイルを右クリックして「ソース管理」「変更の表示とコミット...」をクリックします。




![image_9.png](create_remote_repository_md_images/image_9.png)




以下のウィンドウが表示されます。「Comment」欄（以下の赤矢印の箇所）に、どのような変更を加えたかを説明するコメントを追加します。その後、「Commit」をクリックします。




![image_10.png](create_remote_repository_md_images/image_10.png)




以下のようにGitステータスが緑色の丸印になります。この状態は、モデルがコミットされていることを示します。


# 終了処理

```matlab:Code
cd(root_directory);
```

  


*Copyright 2022 The MathWorks, Inc.*



