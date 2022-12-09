# MATLAB, SimulinkでGitを有効に活用する方法


本サンプルモデルでは、MATLABスクリプト作成作業、Simulinkモデルを使ったモデリング、開発業務を円滑に進めるための、Git機能の活用方法について紹介します。




本デモモデルでは、特に重要な機能に絞って説明しています。より詳細について知りたい場合は、「[プロジェクトのソース管理](https://jp.mathworks.com/help/simulink/source-control-in-simulink-project.html)」をご確認ください。


# 必要なツールボックス


本モデルでは、以下のツールボックスを利用します。



   -  MATLAB® 
   -  Simulink® 

# 必要な外部ツール

   -  Git™ 

# 初期化


最初にこのコマンドを実行してください。



```matlab:Code
root_directory = pwd;
addpath(genpath('efficient_work'));
addpath(genpath('with_Project'));
addpath(genpath('without_Project'));
```

# ワークフロー
## 1. [リモートリポジトリを作成](/without_Project/work_1/create_remote_repository_md.md)


以下のコマンドを実行し、開いたライブスクリプトの内容に従って作業を進めます。



```matlab:Code
cd('without_Project/work_1/');
edit('create_remote_repository');
```

## 2. [Simulinkモデルの変更点をGitで管理](/without_Project/work_2/manage_Simulink_dif_with_git_md.md)


以下のコマンドを実行し、開いたライブスクリプトの内容に従って作業を進めます。



```matlab:Code
cd('without_Project/work_2/');
edit('manage_Simulink_dif_with_git');
```

## 3. [スクリプトの変更点をGitで管理](/without_Project/work_3/manage_script_dif_with_git_md.md)


以下のコマンドを実行し、開いたライブスクリプトの内容に従って作業を進めます。



```matlab:Code
cd('without_Project/work_3/');
edit('manage_script_dif_with_git');
```

## 4. [プロジェクト機能を使って複数ファイルを効率的に管理](/with_Project/workflow_with_project_md.md)


以下のコマンドを実行し、開いたライブスクリプトの内容に従って作業を進めます。



```matlab:Code
cd('with_Project/');
edit('workflow_with_project');
```

## 5. [Gitを使って効率的に仕事を進める工夫](/efficient_work/efficient_workflow_and_tools_md.md)


以下のコマンドを実行し、開いたライブスクリプトの内容に従って作業を進めます。



```matlab:Code
cd('efficient_work/');
edit('efficient_workflow_and_tools');
```

  


*Copyright 2022 The MathWorks, Inc.*



