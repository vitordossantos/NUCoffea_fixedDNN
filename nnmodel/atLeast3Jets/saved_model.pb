�	
��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-0-g919f693420e8��
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
{
hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namehidden_1/kernel
t
#hidden_1/kernel/Read/ReadVariableOpReadVariableOphidden_1/kernel*
_output_shapes
:	�*
dtype0
s
hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namehidden_1/bias
l
!hidden_1/bias/Read/ReadVariableOpReadVariableOphidden_1/bias*
_output_shapes	
:�*
dtype0
u
out_z/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_nameout_z/kernel
n
 out_z/kernel/Read/ReadVariableOpReadVariableOpout_z/kernel*
_output_shapes
:	�*
dtype0
l

out_z/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
out_z/bias
e
out_z/bias/Read/ReadVariableOpReadVariableOp
out_z/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ��
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?

NoOpNoOp
�&
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*�&
value�&B�& B�&
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
	optimizer
loss
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
�
axis
	gamma
beta
 moving_mean
!moving_variance
"trainable_variables
#	variables
$regularization_losses
%	keras_api
h

&kernel
'bias
(trainable_variables
)	variables
*regularization_losses
+	keras_api
R
,trainable_variables
-	variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
 
 
R
6trainable_variables
7	variables
8regularization_losses
9	keras_api

:	keras_api

;	keras_api

<	keras_api

=	keras_api

>	keras_api

?	keras_api

@	keras_api

A	keras_api

B	keras_api

C	keras_api

D	keras_api

E	keras_api
R
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
@
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate
 
*
0
1
&2
'3
04
15
8
0
1
 2
!3
&4
'5
06
17
 
�
Ometrics
Player_metrics
Qlayer_regularization_losses
trainable_variables
	variables
regularization_losses

Rlayers
Snon_trainable_variables
 
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 2
!3
 
�
Tmetrics
Ulayer_metrics
Vlayer_regularization_losses
"trainable_variables
#	variables
$regularization_losses

Wlayers
Xnon_trainable_variables
[Y
VARIABLE_VALUEhidden_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEhidden_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1

&0
'1
 
�
Ymetrics
Zlayer_metrics
[layer_regularization_losses
(trainable_variables
)	variables
*regularization_losses

\layers
]non_trainable_variables
 
 
 
�
^metrics
_layer_metrics
`layer_regularization_losses
,trainable_variables
-	variables
.regularization_losses

alayers
bnon_trainable_variables
XV
VARIABLE_VALUEout_z/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
out_z/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
�
cmetrics
dlayer_metrics
elayer_regularization_losses
2trainable_variables
3	variables
4regularization_losses

flayers
gnon_trainable_variables
 
 
 
�
hmetrics
ilayer_metrics
jlayer_regularization_losses
6trainable_variables
7	variables
8regularization_losses

klayers
lnon_trainable_variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
mmetrics
nlayer_metrics
olayer_regularization_losses
Ftrainable_variables
G	variables
Hregularization_losses

players
qnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 
 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20

 0
!1
 
 
 
 

 0
!1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
D
	xtotal
	ycount
z
_fn_kwargs
{	variables
|	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

x0
y1

{	variables
z
serving_default_input_3Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
z
serving_default_weightsPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
y
serving_default_y_truePlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_weightsserving_default_y_true%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betahidden_1/kernelhidden_1/biasout_z/kernel
out_z/biasConstConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_957237
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#hidden_1/kernel/Read/ReadVariableOp!hidden_1/bias/Read/ReadVariableOp out_z/kernel/Read/ReadVariableOpout_z/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst_2*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_957678
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancehidden_1/kernelhidden_1/biasout_z/kernel
out_z/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_957739Ģ
�
H
,__inference_custom_relu_layer_call_fn_957533

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9568422
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_hidden_1_layer_call_and_return_conditional_losses_956825

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�+
�
__inference__traced_save_957678
file_prefix:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop+
'savev2_out_z_kernel_read_readvariableop)
%savev2_out_z_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const_2

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop'savev2_out_z_kernel_read_readvariableop%savev2_out_z_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 * 
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*d
_input_shapesS
Q: :::::	�:�:	�:: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
[
?__inference_out_layer_call_and_return_conditional_losses_956865

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�*
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_956717

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
G
+__inference_add_loss_2_layer_call_fn_957595

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_add_loss_2_layer_call_and_return_conditional_losses_9568902
PartitionedCallh
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:���������:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�	
"__inference__traced_restore_957739
file_prefix:
,assignvariableop_batch_normalization_2_gamma:;
-assignvariableop_1_batch_normalization_2_beta:B
4assignvariableop_2_batch_normalization_2_moving_mean:F
8assignvariableop_3_batch_normalization_2_moving_variance:5
"assignvariableop_4_hidden_1_kernel:	�/
 assignvariableop_5_hidden_1_bias:	�2
assignvariableop_6_out_z_kernel:	�+
assignvariableop_7_out_z_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 
identity_18��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_2_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_2_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_2_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_2_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_hidden_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_hidden_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_out_z_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_out_z_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17f
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_18�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�2
�
C__inference_model_2_layer_call_and_return_conditional_losses_957202
input_3
weights

y_true*
batch_normalization_2_957159:*
batch_normalization_2_957161:*
batch_normalization_2_957163:*
batch_normalization_2_957165:"
hidden_1_957168:	�
hidden_1_957170:	�
out_z_957174:	�
out_z_957176:
unknown
	unknown_0
identity

identity_1��-batch_normalization_2/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall�out_z/StatefulPartitionedCall�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_2_957159batch_normalization_2_957161batch_normalization_2_957163batch_normalization_2_957165*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9567172/
-batch_normalization_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0hidden_1_957168hidden_1_957170*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_hidden_1_layer_call_and_return_conditional_losses_9568252"
 hidden_1/StatefulPartitionedCall�
custom_relu/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9569612
custom_relu/PartitionedCall�
out_z/StatefulPartitionedCallStatefulPartitionedCall$custom_relu/PartitionedCall:output:0out_z_957174out_z_957176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_out_z_layer_call_and_return_conditional_losses_9568542
out_z/StatefulPartitionedCall�
out/PartitionedCallPartitionedCall&out_z/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_out_layer_call_and_return_conditional_losses_9568652
out/PartitionedCall�
tf.math.abs_4/AbsAbs&out_z/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximum&out_z/StatefulPartitionedCall:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMul&out_z/StatefulPartitionedCall:output:0y_true*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulweights tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Abs�
add_loss_2/PartitionedCallPartitionedCalltf.math.abs_5/Abs:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_add_loss_2_layer_call_and_return_conditional_losses_9568902
add_loss_2/PartitionedCallw
IdentityIdentityout/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_2/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall^out_z/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2>
out_z/StatefulPartitionedCallout_z/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�l
�
C__inference_model_2_layer_call_and_return_conditional_losses_957429
inputs_0
inputs_1
inputs_2K
=batch_normalization_2_assignmovingavg_readvariableop_resource:M
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:E
7batch_normalization_2_batchnorm_readvariableop_resource::
'hidden_1_matmul_readvariableop_resource:	�7
(hidden_1_biasadd_readvariableop_resource:	�7
$out_z_matmul_readvariableop_resource:	�3
%out_z_biasadd_readvariableop_resource:
unknown
	unknown_0
identity

identity_1��%batch_normalization_2/AssignMovingAvg�4batch_normalization_2/AssignMovingAvg/ReadVariableOp�'batch_normalization_2/AssignMovingAvg_1�6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_2/batchnorm/ReadVariableOp�2batch_normalization_2/batchnorm/mul/ReadVariableOp�hidden_1/BiasAdd/ReadVariableOp�hidden_1/MatMul/ReadVariableOp�out_z/BiasAdd/ReadVariableOp�out_z/MatMul/ReadVariableOp�
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indices�
"batch_normalization_2/moments/meanMeaninputs_0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2$
"batch_normalization_2/moments/mean�
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes

:2,
*batch_normalization_2/moments/StopGradient�
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceinputs_03batch_normalization_2/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������21
/batch_normalization_2/moments/SquaredDifference�
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices�
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2(
&batch_normalization_2/moments/variance�
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze�
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1�
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2-
+batch_normalization_2/AssignMovingAvg/decay�
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp�
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes
:2+
)batch_normalization_2/AssignMovingAvg/sub�
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization_2/AssignMovingAvg/mul�
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg�
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2/
-batch_normalization_2/AssignMovingAvg_1/decay�
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp�
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2-
+batch_normalization_2/AssignMovingAvg_1/sub�
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2-
+batch_normalization_2/AssignMovingAvg_1/mul�
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1�
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2'
%batch_normalization_2/batchnorm/add/y�
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/add�
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_2/batchnorm/Rsqrt�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOp�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/mul�
%batch_normalization_2/batchnorm/mul_1Mulinputs_0'batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_2/batchnorm/mul_1�
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_2/batchnorm/mul_2�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp�
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/sub�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_2/batchnorm/add_1�
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
hidden_1/MatMul/ReadVariableOp�
hidden_1/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_1/MatMul�
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
hidden_1/BiasAdd/ReadVariableOp�
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_1/BiasAddk
custom_relu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
custom_relu/mul/x�
custom_relu/mulMulcustom_relu/mul/x:output:0hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
custom_relu/mulk
custom_relu/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
custom_relu/sub/x�
custom_relu/subSubcustom_relu/sub/x:output:0custom_relu/mul:z:0*
T0*(
_output_shapes
:����������2
custom_relu/sub�
custom_relu/MinimumMinimumhidden_1/BiasAdd:output:0custom_relu/sub:z:0*
T0*(
_output_shapes
:����������2
custom_relu/Minimums
custom_relu/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
custom_relu/Maximum/y�
custom_relu/MaximumMaximumcustom_relu/Minimum:z:0custom_relu/Maximum/y:output:0*
T0*(
_output_shapes
:����������2
custom_relu/Maximum�
out_z/MatMul/ReadVariableOpReadVariableOp$out_z_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
out_z/MatMul/ReadVariableOp�
out_z/MatMulMatMulcustom_relu/Maximum:z:0#out_z/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z/MatMul�
out_z/BiasAdd/ReadVariableOpReadVariableOp%out_z_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out_z/BiasAdd/ReadVariableOp�
out_z/BiasAddBiasAddout_z/MatMul:product:0$out_z/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z/BiasAddo
out/SigmoidSigmoidout_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
out/Sigmoidw
tf.math.abs_4/AbsAbsout_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximumout_z/BiasAdd:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMulout_z/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulinputs_1 tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Absj
IdentityIdentityout/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identityp

Identity_1Identitytf.math.abs_5/Abs:y:0^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp^out_z/BiasAdd/ReadVariableOp^out_z/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2<
out_z/BiasAdd/ReadVariableOpout_z/BiasAdd/ReadVariableOp2:
out_z/MatMul/ReadVariableOpout_z/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
�
�
6__inference_batch_normalization_2_layer_call_fn_957442

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9566572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_custom_relu_layer_call_and_return_conditional_losses_957549

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x\
mulMulmul/x:output:0inputs*
T0*(
_output_shapes
:����������2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x]
subSubsub/x:output:0mul:z:0*
T0*(
_output_shapes
:����������2
suba
MinimumMinimuminputssub:z:0*
T0*(
_output_shapes
:����������2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yq
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*(
_output_shapes
:����������2	
Maximum`
IdentityIdentityMaximum:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�L
�
C__inference_model_2_layer_call_and_return_conditional_losses_957354
inputs_0
inputs_1
inputs_2E
7batch_normalization_2_batchnorm_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:G
9batch_normalization_2_batchnorm_readvariableop_1_resource:G
9batch_normalization_2_batchnorm_readvariableop_2_resource::
'hidden_1_matmul_readvariableop_resource:	�7
(hidden_1_biasadd_readvariableop_resource:	�7
$out_z_matmul_readvariableop_resource:	�3
%out_z_biasadd_readvariableop_resource:
unknown
	unknown_0
identity

identity_1��.batch_normalization_2/batchnorm/ReadVariableOp�0batch_normalization_2/batchnorm/ReadVariableOp_1�0batch_normalization_2/batchnorm/ReadVariableOp_2�2batch_normalization_2/batchnorm/mul/ReadVariableOp�hidden_1/BiasAdd/ReadVariableOp�hidden_1/MatMul/ReadVariableOp�out_z/BiasAdd/ReadVariableOp�out_z/MatMul/ReadVariableOp�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp�
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2'
%batch_normalization_2/batchnorm/add/y�
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/add�
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_2/batchnorm/Rsqrt�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOp�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/mul�
%batch_normalization_2/batchnorm/mul_1Mulinputs_0'batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_2/batchnorm/mul_1�
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1�
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_2/batchnorm/mul_2�
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2�
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_2/batchnorm/sub�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_2/batchnorm/add_1�
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
hidden_1/MatMul/ReadVariableOp�
hidden_1/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_1/MatMul�
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
hidden_1/BiasAdd/ReadVariableOp�
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_1/BiasAddk
custom_relu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
custom_relu/mul/x�
custom_relu/mulMulcustom_relu/mul/x:output:0hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
custom_relu/mulk
custom_relu/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
custom_relu/sub/x�
custom_relu/subSubcustom_relu/sub/x:output:0custom_relu/mul:z:0*
T0*(
_output_shapes
:����������2
custom_relu/sub�
custom_relu/MinimumMinimumhidden_1/BiasAdd:output:0custom_relu/sub:z:0*
T0*(
_output_shapes
:����������2
custom_relu/Minimums
custom_relu/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
custom_relu/Maximum/y�
custom_relu/MaximumMaximumcustom_relu/Minimum:z:0custom_relu/Maximum/y:output:0*
T0*(
_output_shapes
:����������2
custom_relu/Maximum�
out_z/MatMul/ReadVariableOpReadVariableOp$out_z_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
out_z/MatMul/ReadVariableOp�
out_z/MatMulMatMulcustom_relu/Maximum:z:0#out_z/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z/MatMul�
out_z/BiasAdd/ReadVariableOpReadVariableOp%out_z_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out_z/BiasAdd/ReadVariableOp�
out_z/BiasAddBiasAddout_z/MatMul:product:0$out_z/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z/BiasAddo
out/SigmoidSigmoidout_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
out/Sigmoidw
tf.math.abs_4/AbsAbsout_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximumout_z/BiasAdd:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMulout_z/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulinputs_1 tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Absj
IdentityIdentityout/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identityp

Identity_1Identitytf.math.abs_5/Abs:y:0^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp^out_z/BiasAdd/ReadVariableOp^out_z/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2<
out_z/BiasAdd/ReadVariableOpout_z/BiasAdd/ReadVariableOp2:
out_z/MatMul/ReadVariableOpout_z/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_model_2_layer_call_fn_957106
input_3
weights

y_true
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3weightsy_trueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������:���������*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_9570542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�
H
,__inference_custom_relu_layer_call_fn_957538

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9569612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_out_z_layer_call_fn_957569

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_out_z_layer_call_and_return_conditional_losses_9568542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_custom_relu_layer_call_and_return_conditional_losses_956842

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x\
mulMulmul/x:output:0inputs*
T0*(
_output_shapes
:����������2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x]
subSubsub/x:output:0mul:z:0*
T0*(
_output_shapes
:����������2
suba
MinimumMinimuminputssub:z:0*
T0*(
_output_shapes
:����������2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yq
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*(
_output_shapes
:����������2	
Maximum`
IdentityIdentityMaximum:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
C__inference_model_2_layer_call_and_return_conditional_losses_957054

inputs
inputs_1
inputs_2*
batch_normalization_2_957011:*
batch_normalization_2_957013:*
batch_normalization_2_957015:*
batch_normalization_2_957017:"
hidden_1_957020:	�
hidden_1_957022:	�
out_z_957026:	�
out_z_957028:
unknown
	unknown_0
identity

identity_1��-batch_normalization_2/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall�out_z/StatefulPartitionedCall�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_2_957011batch_normalization_2_957013batch_normalization_2_957015batch_normalization_2_957017*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9567172/
-batch_normalization_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0hidden_1_957020hidden_1_957022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_hidden_1_layer_call_and_return_conditional_losses_9568252"
 hidden_1/StatefulPartitionedCall�
custom_relu/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9569612
custom_relu/PartitionedCall�
out_z/StatefulPartitionedCallStatefulPartitionedCall$custom_relu/PartitionedCall:output:0out_z_957026out_z_957028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_out_z_layer_call_and_return_conditional_losses_9568542
out_z/StatefulPartitionedCall�
out/PartitionedCallPartitionedCall&out_z/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_out_layer_call_and_return_conditional_losses_9568652
out/PartitionedCall�
tf.math.abs_4/AbsAbs&out_z/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximum&out_z/StatefulPartitionedCall:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMul&out_z/StatefulPartitionedCall:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulinputs_1 tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Abs�
add_loss_2/PartitionedCallPartitionedCalltf.math.abs_5/Abs:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_add_loss_2_layer_call_and_return_conditional_losses_9568902
add_loss_2/PartitionedCallw
IdentityIdentityout/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_2/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall^out_z/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2>
out_z/StatefulPartitionedCallout_z/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957475

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_custom_relu_layer_call_and_return_conditional_losses_956961

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x\
mulMulmul/x:output:0inputs*
T0*(
_output_shapes
:����������2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x]
subSubsub/x:output:0mul:z:0*
T0*(
_output_shapes
:����������2
suba
MinimumMinimuminputssub:z:0*
T0*(
_output_shapes
:����������2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yq
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*(
_output_shapes
:����������2	
Maximum`
IdentityIdentityMaximum:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_custom_relu_layer_call_and_return_conditional_losses_957560

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x\
mulMulmul/x:output:0inputs*
T0*(
_output_shapes
:����������2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x]
subSubsub/x:output:0mul:z:0*
T0*(
_output_shapes
:����������2
suba
MinimumMinimuminputssub:z:0*
T0*(
_output_shapes
:����������2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yq
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*(
_output_shapes
:����������2	
Maximum`
IdentityIdentityMaximum:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_957293
inputs_0
inputs_1
inputs_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������:���������*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_9570542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_956657

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_out_z_layer_call_and_return_conditional_losses_957579

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
A__inference_out_z_layer_call_and_return_conditional_losses_956854

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
C__inference_model_2_layer_call_and_return_conditional_losses_957154
input_3
weights

y_true*
batch_normalization_2_957111:*
batch_normalization_2_957113:*
batch_normalization_2_957115:*
batch_normalization_2_957117:"
hidden_1_957120:	�
hidden_1_957122:	�
out_z_957126:	�
out_z_957128:
unknown
	unknown_0
identity

identity_1��-batch_normalization_2/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall�out_z/StatefulPartitionedCall�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_2_957111batch_normalization_2_957113batch_normalization_2_957115batch_normalization_2_957117*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9566572/
-batch_normalization_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0hidden_1_957120hidden_1_957122*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_hidden_1_layer_call_and_return_conditional_losses_9568252"
 hidden_1/StatefulPartitionedCall�
custom_relu/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9568422
custom_relu/PartitionedCall�
out_z/StatefulPartitionedCallStatefulPartitionedCall$custom_relu/PartitionedCall:output:0out_z_957126out_z_957128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_out_z_layer_call_and_return_conditional_losses_9568542
out_z/StatefulPartitionedCall�
out/PartitionedCallPartitionedCall&out_z/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_out_layer_call_and_return_conditional_losses_9568652
out/PartitionedCall�
tf.math.abs_4/AbsAbs&out_z/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximum&out_z/StatefulPartitionedCall:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMul&out_z/StatefulPartitionedCall:output:0y_true*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulweights tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Abs�
add_loss_2/PartitionedCallPartitionedCalltf.math.abs_5/Abs:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_add_loss_2_layer_call_and_return_conditional_losses_9568902
add_loss_2/PartitionedCallw
IdentityIdentityout/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_2/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall^out_z/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2>
out_z/StatefulPartitionedCallout_z/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�
r
F__inference_add_loss_2_layer_call_and_return_conditional_losses_956890

inputs
identity

identity_1V
IdentityIdentityinputs*
T0*#
_output_shapes
:���������2

IdentityZ

Identity_1Identityinputs*
T0*#
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:���������:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_957265
inputs_0
inputs_1
inputs_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_9568952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
�*
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957509

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
@
$__inference_out_layer_call_fn_957584

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_out_layer_call_and_return_conditional_losses_9568652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
r
F__inference_add_loss_2_layer_call_and_return_conditional_losses_957600

inputs
identity

identity_1V
IdentityIdentityinputs*
T0*#
_output_shapes
:���������2

IdentityZ

Identity_1Identityinputs*
T0*#
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:���������:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_2_layer_call_fn_957455

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9567172
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_hidden_1_layer_call_fn_957518

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_hidden_1_layer_call_and_return_conditional_losses_9568252
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�2
�
C__inference_model_2_layer_call_and_return_conditional_losses_956895

inputs
inputs_1
inputs_2*
batch_normalization_2_956806:*
batch_normalization_2_956808:*
batch_normalization_2_956810:*
batch_normalization_2_956812:"
hidden_1_956826:	�
hidden_1_956828:	�
out_z_956855:	�
out_z_956857:
unknown
	unknown_0
identity

identity_1��-batch_normalization_2/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall�out_z/StatefulPartitionedCall�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_2_956806batch_normalization_2_956808batch_normalization_2_956810batch_normalization_2_956812*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9566572/
-batch_normalization_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0hidden_1_956826hidden_1_956828*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_hidden_1_layer_call_and_return_conditional_losses_9568252"
 hidden_1/StatefulPartitionedCall�
custom_relu/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_custom_relu_layer_call_and_return_conditional_losses_9568422
custom_relu/PartitionedCall�
out_z/StatefulPartitionedCallStatefulPartitionedCall$custom_relu/PartitionedCall:output:0out_z_956855out_z_956857*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_out_z_layer_call_and_return_conditional_losses_9568542
out_z/StatefulPartitionedCall�
out/PartitionedCallPartitionedCall&out_z/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_out_layer_call_and_return_conditional_losses_9568652
out/PartitionedCall�
tf.math.abs_4/AbsAbs&out_z/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_4/Abs
tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_2/Maximum/y�
tf.math.maximum_2/MaximumMaximum&out_z/StatefulPartitionedCall:output:0$tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_2/Maximum�
tf.math.multiply_6/MulMul&out_z/StatefulPartitionedCall:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_6/Mul�
tf.math.multiply_7/MulMulunknowntf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_7/Mul�
tf.math.subtract_2/SubSubtf.math.maximum_2/Maximum:z:0tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_2/Sub{
tf.math.exp_2/ExpExptf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_2/Exp�
tf.__operators__.add_4/AddV2AddV2	unknown_0tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_4/AddV2�
tf.math.log_2/LogLog tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_2/Log�
tf.__operators__.add_5/AddV2AddV2tf.math.subtract_2/Sub:z:0tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_5/AddV2�
tf.math.multiply_8/MulMulinputs_1 tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_8/Mul�
*tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_2/Sum/reduction_indices�
tf.math.reduce_sum_2/SumSumtf.math.multiply_8/Mul:z:03tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_2/Sum~
tf.math.abs_5/AbsAbs!tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_5/Abs�
add_loss_2/PartitionedCallPartitionedCalltf.math.abs_5/Abs:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_add_loss_2_layer_call_and_return_conditional_losses_9568902
add_loss_2/PartitionedCallw
IdentityIdentityout/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_2/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall^out_z/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2>
out_z/StatefulPartitionedCallout_z/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�

�
D__inference_hidden_1_layer_call_and_return_conditional_losses_957528

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_2_layer_call_fn_956919
input_3
weights

y_true
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3weightsy_trueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_9568952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_signature_wrapper_957237
input_3
weights

y_true
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3weightsy_trueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_9566332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�V
�
!__inference__wrapped_model_956633
input_3
weights

y_trueM
?model_2_batch_normalization_2_batchnorm_readvariableop_resource:Q
Cmodel_2_batch_normalization_2_batchnorm_mul_readvariableop_resource:O
Amodel_2_batch_normalization_2_batchnorm_readvariableop_1_resource:O
Amodel_2_batch_normalization_2_batchnorm_readvariableop_2_resource:B
/model_2_hidden_1_matmul_readvariableop_resource:	�?
0model_2_hidden_1_biasadd_readvariableop_resource:	�?
,model_2_out_z_matmul_readvariableop_resource:	�;
-model_2_out_z_biasadd_readvariableop_resource:
model_2_956618
model_2_956623
identity��6model_2/batch_normalization_2/batchnorm/ReadVariableOp�8model_2/batch_normalization_2/batchnorm/ReadVariableOp_1�8model_2/batch_normalization_2/batchnorm/ReadVariableOp_2�:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp�'model_2/hidden_1/BiasAdd/ReadVariableOp�&model_2/hidden_1/MatMul/ReadVariableOp�$model_2/out_z/BiasAdd/ReadVariableOp�#model_2/out_z/MatMul/ReadVariableOp�
6model_2/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp?model_2_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype028
6model_2/batch_normalization_2/batchnorm/ReadVariableOp�
-model_2/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2/
-model_2/batch_normalization_2/batchnorm/add/y�
+model_2/batch_normalization_2/batchnorm/addAddV2>model_2/batch_normalization_2/batchnorm/ReadVariableOp:value:06model_2/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:2-
+model_2/batch_normalization_2/batchnorm/add�
-model_2/batch_normalization_2/batchnorm/RsqrtRsqrt/model_2/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:2/
-model_2/batch_normalization_2/batchnorm/Rsqrt�
:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_2_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02<
:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp�
+model_2/batch_normalization_2/batchnorm/mulMul1model_2/batch_normalization_2/batchnorm/Rsqrt:y:0Bmodel_2/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2-
+model_2/batch_normalization_2/batchnorm/mul�
-model_2/batch_normalization_2/batchnorm/mul_1Mulinput_3/model_2/batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2/
-model_2/batch_normalization_2/batchnorm/mul_1�
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_2_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_1�
-model_2/batch_normalization_2/batchnorm/mul_2Mul@model_2/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0/model_2/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:2/
-model_2/batch_normalization_2/batchnorm/mul_2�
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_2_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02:
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_2�
+model_2/batch_normalization_2/batchnorm/subSub@model_2/batch_normalization_2/batchnorm/ReadVariableOp_2:value:01model_2/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2-
+model_2/batch_normalization_2/batchnorm/sub�
-model_2/batch_normalization_2/batchnorm/add_1AddV21model_2/batch_normalization_2/batchnorm/mul_1:z:0/model_2/batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2/
-model_2/batch_normalization_2/batchnorm/add_1�
&model_2/hidden_1/MatMul/ReadVariableOpReadVariableOp/model_2_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02(
&model_2/hidden_1/MatMul/ReadVariableOp�
model_2/hidden_1/MatMulMatMul1model_2/batch_normalization_2/batchnorm/add_1:z:0.model_2/hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/hidden_1/MatMul�
'model_2/hidden_1/BiasAdd/ReadVariableOpReadVariableOp0model_2_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'model_2/hidden_1/BiasAdd/ReadVariableOp�
model_2/hidden_1/BiasAddBiasAdd!model_2/hidden_1/MatMul:product:0/model_2/hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/hidden_1/BiasAdd{
model_2/custom_relu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
model_2/custom_relu/mul/x�
model_2/custom_relu/mulMul"model_2/custom_relu/mul/x:output:0!model_2/hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_2/custom_relu/mul{
model_2/custom_relu/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
model_2/custom_relu/sub/x�
model_2/custom_relu/subSub"model_2/custom_relu/sub/x:output:0model_2/custom_relu/mul:z:0*
T0*(
_output_shapes
:����������2
model_2/custom_relu/sub�
model_2/custom_relu/MinimumMinimum!model_2/hidden_1/BiasAdd:output:0model_2/custom_relu/sub:z:0*
T0*(
_output_shapes
:����������2
model_2/custom_relu/Minimum�
model_2/custom_relu/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_2/custom_relu/Maximum/y�
model_2/custom_relu/MaximumMaximummodel_2/custom_relu/Minimum:z:0&model_2/custom_relu/Maximum/y:output:0*
T0*(
_output_shapes
:����������2
model_2/custom_relu/Maximum�
#model_2/out_z/MatMul/ReadVariableOpReadVariableOp,model_2_out_z_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#model_2/out_z/MatMul/ReadVariableOp�
model_2/out_z/MatMulMatMulmodel_2/custom_relu/Maximum:z:0+model_2/out_z/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_2/out_z/MatMul�
$model_2/out_z/BiasAdd/ReadVariableOpReadVariableOp-model_2_out_z_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model_2/out_z/BiasAdd/ReadVariableOp�
model_2/out_z/BiasAddBiasAddmodel_2/out_z/MatMul:product:0,model_2/out_z/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_2/out_z/BiasAdd�
model_2/out/SigmoidSigmoidmodel_2/out_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_2/out/Sigmoid�
model_2/tf.math.abs_4/AbsAbsmodel_2/out_z/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_2/tf.math.abs_4/Abs�
#model_2/tf.math.maximum_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_2/tf.math.maximum_2/Maximum/y�
!model_2/tf.math.maximum_2/MaximumMaximummodel_2/out_z/BiasAdd:output:0,model_2/tf.math.maximum_2/Maximum/y:output:0*
T0*'
_output_shapes
:���������2#
!model_2/tf.math.maximum_2/Maximum�
model_2/tf.math.multiply_6/MulMulmodel_2/out_z/BiasAdd:output:0y_true*
T0*'
_output_shapes
:���������2 
model_2/tf.math.multiply_6/Mul�
model_2/tf.math.multiply_7/MulMulmodel_2_956618model_2/tf.math.abs_4/Abs:y:0*
T0*'
_output_shapes
:���������2 
model_2/tf.math.multiply_7/Mul�
model_2/tf.math.subtract_2/SubSub%model_2/tf.math.maximum_2/Maximum:z:0"model_2/tf.math.multiply_6/Mul:z:0*
T0*'
_output_shapes
:���������2 
model_2/tf.math.subtract_2/Sub�
model_2/tf.math.exp_2/ExpExp"model_2/tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������2
model_2/tf.math.exp_2/Exp�
$model_2/tf.__operators__.add_4/AddV2AddV2model_2_956623model_2/tf.math.exp_2/Exp:y:0*
T0*'
_output_shapes
:���������2&
$model_2/tf.__operators__.add_4/AddV2�
model_2/tf.math.log_2/LogLog(model_2/tf.__operators__.add_4/AddV2:z:0*
T0*'
_output_shapes
:���������2
model_2/tf.math.log_2/Log�
$model_2/tf.__operators__.add_5/AddV2AddV2"model_2/tf.math.subtract_2/Sub:z:0model_2/tf.math.log_2/Log:y:0*
T0*'
_output_shapes
:���������2&
$model_2/tf.__operators__.add_5/AddV2�
model_2/tf.math.multiply_8/MulMulweights(model_2/tf.__operators__.add_5/AddV2:z:0*
T0*'
_output_shapes
:���������2 
model_2/tf.math.multiply_8/Mul�
2model_2/tf.math.reduce_sum_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2model_2/tf.math.reduce_sum_2/Sum/reduction_indices�
 model_2/tf.math.reduce_sum_2/SumSum"model_2/tf.math.multiply_8/Mul:z:0;model_2/tf.math.reduce_sum_2/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2"
 model_2/tf.math.reduce_sum_2/Sum�
model_2/tf.math.abs_5/AbsAbs)model_2/tf.math.reduce_sum_2/Sum:output:0*
T0*#
_output_shapes
:���������2
model_2/tf.math.abs_5/Absr
IdentityIdentitymodel_2/out/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp7^model_2/batch_normalization_2/batchnorm/ReadVariableOp9^model_2/batch_normalization_2/batchnorm/ReadVariableOp_19^model_2/batch_normalization_2/batchnorm/ReadVariableOp_2;^model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp(^model_2/hidden_1/BiasAdd/ReadVariableOp'^model_2/hidden_1/MatMul/ReadVariableOp%^model_2/out_z/BiasAdd/ReadVariableOp$^model_2/out_z/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2p
6model_2/batch_normalization_2/batchnorm/ReadVariableOp6model_2/batch_normalization_2/batchnorm/ReadVariableOp2t
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_18model_2/batch_normalization_2/batchnorm/ReadVariableOp_12t
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_28model_2/batch_normalization_2/batchnorm/ReadVariableOp_22x
:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp2R
'model_2/hidden_1/BiasAdd/ReadVariableOp'model_2/hidden_1/BiasAdd/ReadVariableOp2P
&model_2/hidden_1/MatMul/ReadVariableOp&model_2/hidden_1/MatMul/ReadVariableOp2L
$model_2/out_z/BiasAdd/ReadVariableOp$model_2/out_z/BiasAdd/ReadVariableOp2J
#model_2/out_z/MatMul/ReadVariableOp#model_2/out_z/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	weights:OK
'
_output_shapes
:���������
 
_user_specified_namey_true:

_output_shapes
: :

_output_shapes
: 
�
[
?__inference_out_layer_call_and_return_conditional_losses_957589

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:���������2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_30
serving_default_input_3:0���������
;
weights0
serving_default_weights:0���������
9
y_true/
serving_default_y_true:0���������7
out0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
	optimizer
loss
trainable_variables
	variables
regularization_losses
	keras_api

signatures
}_default_save_signature
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
�
axis
	gamma
beta
 moving_mean
!moving_variance
"trainable_variables
#	variables
$regularization_losses
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

&kernel
'bias
(trainable_variables
)	variables
*regularization_losses
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,trainable_variables
-	variables
.regularization_losses
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
6trainable_variables
7	variables
8regularization_losses
9	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
:	keras_api"
_tf_keras_layer
(
;	keras_api"
_tf_keras_layer
(
<	keras_api"
_tf_keras_layer
(
=	keras_api"
_tf_keras_layer
(
>	keras_api"
_tf_keras_layer
(
?	keras_api"
_tf_keras_layer
(
@	keras_api"
_tf_keras_layer
(
A	keras_api"
_tf_keras_layer
(
B	keras_api"
_tf_keras_layer
(
C	keras_api"
_tf_keras_layer
(
D	keras_api"
_tf_keras_layer
(
E	keras_api"
_tf_keras_layer
�
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
S
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate"
	optimizer
 "
trackable_dict_wrapper
J
0
1
&2
'3
04
15"
trackable_list_wrapper
X
0
1
 2
!3
&4
'5
06
17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ometrics
Player_metrics
Qlayer_regularization_losses
trainable_variables
	variables
regularization_losses

Rlayers
Snon_trainable_variables
~__call__
}_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tmetrics
Ulayer_metrics
Vlayer_regularization_losses
"trainable_variables
#	variables
$regularization_losses

Wlayers
Xnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 	�2hidden_1/kernel
:�2hidden_1/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ymetrics
Zlayer_metrics
[layer_regularization_losses
(trainable_variables
)	variables
*regularization_losses

\layers
]non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
^metrics
_layer_metrics
`layer_regularization_losses
,trainable_variables
-	variables
.regularization_losses

alayers
bnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	�2out_z/kernel
:2
out_z/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
cmetrics
dlayer_metrics
elayer_regularization_losses
2trainable_variables
3	variables
4regularization_losses

flayers
gnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
hmetrics
ilayer_metrics
jlayer_regularization_losses
6trainable_variables
7	variables
8regularization_losses

klayers
lnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
mmetrics
nlayer_metrics
olayer_regularization_losses
Ftrainable_variables
G	variables
Hregularization_losses

players
qnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
r0
s1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
^
	xtotal
	ycount
z
_fn_kwargs
{	variables
|	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
x0
y1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
�B�
!__inference__wrapped_model_956633input_3weightsy_true"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_model_2_layer_call_fn_956919
(__inference_model_2_layer_call_fn_957265
(__inference_model_2_layer_call_fn_957293
(__inference_model_2_layer_call_fn_957106�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_model_2_layer_call_and_return_conditional_losses_957354
C__inference_model_2_layer_call_and_return_conditional_losses_957429
C__inference_model_2_layer_call_and_return_conditional_losses_957154
C__inference_model_2_layer_call_and_return_conditional_losses_957202�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_2_layer_call_fn_957442
6__inference_batch_normalization_2_layer_call_fn_957455�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957475
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957509�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_hidden_1_layer_call_fn_957518�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_hidden_1_layer_call_and_return_conditional_losses_957528�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_custom_relu_layer_call_fn_957533
,__inference_custom_relu_layer_call_fn_957538�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_custom_relu_layer_call_and_return_conditional_losses_957549
G__inference_custom_relu_layer_call_and_return_conditional_losses_957560�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_out_z_layer_call_fn_957569�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_out_z_layer_call_and_return_conditional_losses_957579�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_out_layer_call_fn_957584�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_out_layer_call_and_return_conditional_losses_957589�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_add_loss_2_layer_call_fn_957595�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_add_loss_2_layer_call_and_return_conditional_losses_957600�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_957237input_3weightsy_true"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const
J	
Const_1�
!__inference__wrapped_model_956633�! &'01��z�w
p�m
k�h
!�
input_3���������
!�
weights���������
 �
y_true���������
� ")�&
$
out�
out����������
F__inference_add_loss_2_layer_call_and_return_conditional_losses_957600k+�(
!�
�
inputs���������
� "<�9
�
0���������
�
�
1/0���������r
+__inference_add_loss_2_layer_call_fn_957595C+�(
!�
�
inputs���������
� "�����������
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957475b! 3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_957509b !3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_2_layer_call_fn_957442U! 3�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_2_layer_call_fn_957455U !3�0
)�&
 �
inputs���������
p
� "�����������
G__inference_custom_relu_layer_call_and_return_conditional_losses_957549b8�5
.�+
!�
inputs����������

 
p 
� "&�#
�
0����������
� �
G__inference_custom_relu_layer_call_and_return_conditional_losses_957560b8�5
.�+
!�
inputs����������

 
p
� "&�#
�
0����������
� �
,__inference_custom_relu_layer_call_fn_957533U8�5
.�+
!�
inputs����������

 
p 
� "������������
,__inference_custom_relu_layer_call_fn_957538U8�5
.�+
!�
inputs����������

 
p
� "������������
D__inference_hidden_1_layer_call_and_return_conditional_losses_957528]&'/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� }
)__inference_hidden_1_layer_call_fn_957518P&'/�,
%�"
 �
inputs���������
� "������������
C__inference_model_2_layer_call_and_return_conditional_losses_957154�! &'01����
x�u
k�h
!�
input_3���������
!�
weights���������
 �
y_true���������
p 

 
� "@�=
�
0���������
�
�
1/0����������
C__inference_model_2_layer_call_and_return_conditional_losses_957202� !&'01����
x�u
k�h
!�
input_3���������
!�
weights���������
 �
y_true���������
p

 
� "@�=
�
0���������
�
�
1/0����������
C__inference_model_2_layer_call_and_return_conditional_losses_957354�! &'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p 

 
� "@�=
�
0���������
�
�
1/0����������
C__inference_model_2_layer_call_and_return_conditional_losses_957429� !&'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p

 
� "@�=
�
0���������
�
�
1/0����������
(__inference_model_2_layer_call_fn_956919�! &'01����
x�u
k�h
!�
input_3���������
!�
weights���������
 �
y_true���������
p 

 
� "�����������
(__inference_model_2_layer_call_fn_957106� !&'01����
x�u
k�h
!�
input_3���������
!�
weights���������
 �
y_true���������
p

 
� "�����������
(__inference_model_2_layer_call_fn_957265�! &'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p 

 
� "�����������
(__inference_model_2_layer_call_fn_957293� !&'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p

 
� "�����������
?__inference_out_layer_call_and_return_conditional_losses_957589X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� s
$__inference_out_layer_call_fn_957584K/�,
%�"
 �
inputs���������
� "�����������
A__inference_out_z_layer_call_and_return_conditional_losses_957579]010�-
&�#
!�
inputs����������
� "%�"
�
0���������
� z
&__inference_out_z_layer_call_fn_957569P010�-
&�#
!�
inputs����������
� "�����������
$__inference_signature_wrapper_957237�! &'01�����
� 
���
,
input_3!�
input_3���������
,
weights!�
weights���������
*
y_true �
y_true���������")�&
$
out�
out���������