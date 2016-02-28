<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../jsp/common/header.jsp" />
<!-- 自訂 css (位置要固定)-->
<!-- jqgrid -->
<link rel="stylesheet" href="plugins/jqGrid/css/ui.jqgrid.css">

<!-- Select2 -->
<link rel="stylesheet" href="plugins/almsaeed/plugins/select2/select2.min.css">
</head>
<jsp:include page="../jsp/common/topmenu.jsp" />

<!-- Main content -->
<form id="expensesForm">
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				支出功能作業 <small>支出支出支出支出支出噢！！</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
				<li class="active">Here</li>
			</ol>
		</section>
		<section class="content">
			<!-- begin -->
			<!-- menu 1 -->
			<div class="box box-default" id="tableMain">
				<div class="box-header with-border">
					<h3 class="box-title">支出主檔</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- box-body -->
				<div class="box-body">
					<div class="form-group">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>請款日期</label>
									<div>
										<input type="text" id="billDate" placeholder="YYYY-MM-DD" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>請款店家</label>
									<div>
										<select id="billStore" class="form-control select2"></select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="control-group">
								<div class="col-md-1">
									<input class="btn btn-block btn-success btn-sm" type="button" value="查詢" onclick="findMain();" />
								</div>
								<div class="col-md-1">
									<input class="btn btn-block btn-primary btn-sm" type="button" value="新增" onclick="addMain();" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- grid 1 -->
			<div class="box box-default">
				<div class="box-header with-border">
					<h3 class="box-title">Main Data Table</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="jqGrid_wrapper">
						<table id="grid1"></table>
						<div id="jqGrid1Pager"></div>
					</div>
				</div>
			</div>

			<!-- menu 2 -->
			<div class="box box-default">
				<div class="box-header with-border">
					<h3 class="box-title">支出明細</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- box-body -->
				<div class="box-body">
					<div class="form-group">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>發生日期</label>
									<div>
										<input type="hidden" id="index"> <input type="text" id="realDate" placeholder="YYYY-MM-DD">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>發生店家</label>
									<div>
										<select id="realStore" class="form-control select2"></select>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>支出去向</label>
									<div>
										<input type="text" id="source" placeholder="支出去向">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>項目</label>
									<div>
										<input type="text" id="accountIteam" placeholder="項目">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>請款單位</label>
									<div>
										<select id="payeeUnit" class="form-control select2"></select>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>請款人</label>
									<div>
										<select id="payee" class="form-control select2"></select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>支出內容</label>
									<div>
										<input type="text" id="detail" placeholder="支出內容">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>時間</label>
									<div>
										<input type="text" id="workTime" placeholder="時間">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>班別</label>
									<div>
										<input type="text" id="workType" placeholder="班別">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>單價</label>
									<div>
										<input type="text" id="price" placeholder="單價">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>數量</label>
									<div>
										<input type="text" id="quantity" placeholder="數量">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label>單位</label>
									<div>
										<input type="text" id="unit" placeholder="單位">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>金額</label>
									<div>
										<input type="text" id="amt" placeholder="金額">
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="form-group">
									<label>備註</label>
									<div>
										<input type="text" id="mark" size="100%" placeholder="備註">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-1">
								<input class="btn btn-block btn-primary btn-sm" type="button" value="新增" onclick="addDetail();" />
							</div>
							<div class="col-md-1">
								<input class="btn btn-block btn-warning btn-sm" type="button" value="修改" onclick="updateDetail();" />
							</div>
							<div class="col-md-1">
								<input class="btn btn-block btn-danger btn-sm" type="button" value="刪除" onclick="deleteDetail();" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- grid 2 -->
			<div class="box box-default">
				<div class="box-header with-border">
					<h3 class="box-title">Detail Data Table</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="jqGrid_wrapper">
						<table id="grid2"></table>
						<div id="jqGrid2Pager"></div>
					</div>
				</div>
			</div>
		</section>
	</div>
</form>
<!-- /.content -->
<jsp:include page="../jsp/common/endmenu.jsp" />
<jsp:include page="../jsp/common/footer.jsp" />
<!-- 自訂 js (位置要固定)-->
<!-- jqgrid -->
<script src="plugins/jqGrid/js/jquery.jqGrid.min.js"></script>
<script src="plugins/jqGrid/js/grid.locale-tw.js"></script>
<!-- Select2 -->
<script src="plugins/almsaeed/plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="plugins/almsaeed/plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/almsaeed/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/almsaeed/plugins/input-mask/jquery.inputmask.extensions.js"></script>


<script type="text/javascript" src="js/expenses.js"></script>
</body>
</html>