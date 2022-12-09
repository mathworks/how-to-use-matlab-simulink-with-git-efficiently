# プロジェクトを使って効率よく運用する
# 背景


複数のファイルを同時に使って開発を行う場合、プロジェクトを作成して開発を進めることを推奨します。




例えば、以下のように制御モデルとプラントモデルを組み合わせたシステムをシミュレーションする場合、モデルやデータ、パラメーターなどをファイルに分けて管理します。




![image_0.png](workflow_with_project_md_images/image_0.png)




本デモモデルは、以下のように5個のファイル構成されています。




![image_1.png](workflow_with_project_md_images/image_1.png)


# プロジェクトを作成


MATLABの「ホーム」タブから「プロジェクト」「フォルダーから」をクリックします。




![image_2.png](workflow_with_project_md_images/image_2.png)




現れたウィンドウでプロジェクト名を入力し、プロジェクトファイルを格納するフォルダーを選択します。入力したら「作成」をクリックします。




![image_3.png](workflow_with_project_md_images/image_3.png)




「resources」フォルダーが作成され、プロジェクトの設定ファイルがその中に格納されます。また、プロジェクトの起動ファイル（ここでは「With_Project.prj」）が作成されます。以降は、そのファイルをダブルクリックすることをでプロジェクトを起動できます。




ここでは、プロジェクト作成と同時にそのプロジェクトは起動され、以下のように表示されます。初回の立ち上げのため、「ようこそ」画面が出ていますが、ここでは「×」をクリックして閉じます。




![image_4.png](workflow_with_project_md_images/image_4.png)




プロジェクトを閉じる時は、以下の「×」をクリックします。




![image_5.png](workflow_with_project_md_images/image_5.png)


# プロジェクト内フォルダーを作る


多数のファイルを管理するには、分類ごとにファイルをフォルダーに分けることが重要です。ここで、プロジェクト内にフォルダーを作り、そこにファイルを加えていきます。




プロジェクトの空白部分で右クリックし、「新規」「フォルダー」をクリックします。




![image_6.png](workflow_with_project_md_images/image_6.png)




ここでは、例えば以下のように作ります。




![image_7.png](workflow_with_project_md_images/image_7.png)




作ったフォルダーは、薄い文字とアイコンで表示されています。この状態では、フォルダー内はパスが通っていません。そこで、フォルダーパスをプロジェクトに追加することで、その中のファイルを見つけられるようにします。




作ったフォルダーそれぞれに対して右クリックして「プロジェクトのパス」「プロジェクトのパスに追加」をクリックします。




![image_8.png](workflow_with_project_md_images/image_8.png)




パスが通ったことで、文字とアイコンが濃くなります。




![image_9.png](workflow_with_project_md_images/image_9.png)




ここで、5個のファイルをそれぞれフォルダーに分けます。以下のようにドラッグ\&ドロップすることで、フォルダー分けすることができます。




![image_10.png](workflow_with_project_md_images/image_10.png)




問題なく格納できれば、以下のようになります。




![image_11.png](workflow_with_project_md_images/image_11.png)




もし、更に新規にファイルを用意してプロジェクトに登録したい場合は、同じようにプロジェクトウィンドウ内のフォルダーにドラッグ\&ドロップすることで登録できます。




例えば、以下のように「new_model.slx」を作った時、Modelフォルダにドラッグ\&ドロップして登録できます。




![image_12.png](workflow_with_project_md_images/image_12.png)


# プロジェクトをコミットする


ここで、一連のプロジェクト設定ファイルとモデルファイルをGitで管理させます。「resources」フォルダー以下のファイルやプロジェクト起動ファイルは、作られた段階で「追加」された状態になっています（以下のように+のマークが付いています）。




![image_13.png](workflow_with_project_md_images/image_13.png)




「追加」が終わっているので、すぐに「コミット」を行うことができます。ここで、プロジェクトを作ったことにより、MATLABのツールストリップに「プロジェクト」というタブが現れています。




「プロジェクト」タブの「コミット」をクリックします。




![image_14.png](workflow_with_project_md_images/image_14.png)




以下のようにコメントを入力し、「送信」をクリックします。




![image_15.png](workflow_with_project_md_images/image_15.png)




これにより、以下のように全てのファイルが緑色の丸印になり、コミットが完了します。




![image_16.png](workflow_with_project_md_images/image_16.png)


# キャッシュファイルを格納するフォルダーを作成する


Simulinkモデルを実行すると、「slprj」フォルダーや「.slxc」ファイルが生成されます。これらはモデルの再ビルドを効率化するための一時ファイルであり、現在のフォルダーに無造作に生成されるのは、あまり好ましい状態ではありません。




![image_17.png](workflow_with_project_md_images/image_17.png)




プロジェクトを使うと、このキャッシュファイルが特定のフォルダーに生成されるように設定できます。




まず、プロジェクトで新しくフォルダーを作成し、プロジェクトパスに追加します。




![image_18.png](workflow_with_project_md_images/image_18.png)




次に、「プロジェクト」タブの「詳細」をクリックします。




![image_19.png](workflow_with_project_md_images/image_19.png)




プロジェクトの詳細の「生成されたSimulinkファイル」の「シミュレーション キャッシュ フォルダー」で「参照」をクリックし、その新しく作ったフォルダーを指定します。もしコード生成も行う場合は、「コード生成フォルダー」も合わせて設定しておくことをお勧めします。




指定したらOKをクリックします。




![image_20.png](workflow_with_project_md_images/image_20.png)




これにより、キャッシュファイルは設定したフォルダーに生成されるようになります。




![image_21.png](workflow_with_project_md_images/image_21.png)




プロジェクトの設定を変更した時、「resources」フォルダーの中のファイル構成が変更されます。従って、Gitコミットをして変更点を記録する必要があります。




![image_22.png](workflow_with_project_md_images/image_22.png)


# 終了処理

```matlab:Code
cd(root_directory);
```

  


*Copyright 2022 The MathWorks, Inc.*



