��	
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
 �"serve*2.6.02v2.6.0-0-g919f693420e8��
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
|
hidden_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namehidden_12/kernel
u
$hidden_12/kernel/Read/ReadVariableOpReadVariableOphidden_12/kernel*
_output_shapes

:d*
dtype0
t
hidden_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namehidden_12/bias
m
"hidden_12/bias/Read/ReadVariableOpReadVariableOphidden_12/bias*
_output_shapes
:d*
dtype0
v
out_z2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_nameout_z2/kernel
o
!out_z2/kernel/Read/ReadVariableOpReadVariableOpout_z2/kernel*
_output_shapes

:d*
dtype0
n
out_z2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameout_z2/bias
g
out_z2/bias/Read/ReadVariableOpReadVariableOpout_z2/bias*
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
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEhidden_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEhidden_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
YW
VARIABLE_VALUEout_z2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEout_z2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_4Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
{
serving_default_weights2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
z
serving_default_y_true2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4serving_default_weights2serving_default_y_true2%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betahidden_12/kernelhidden_12/biasout_z2/kernelout_z2/biasConstConst_1*
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
$__inference_signature_wrapper_958503
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp$hidden_12/kernel/Read/ReadVariableOp"hidden_12/bias/Read/ReadVariableOp!out_z2/kernel/Read/ReadVariableOpout_z2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst_2*
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
__inference__traced_save_958944
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancehidden_12/kernelhidden_12/biasout_z2/kernelout_z2/bias	Adam/iterAdam/beta_1Adam/beta_2
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
"__inference__traced_restore_959005��
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958741

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
\
@__inference_out2_layer_call_and_return_conditional_losses_958855

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
�2
�
C__inference_model_3_layer_call_and_return_conditional_losses_958468
input_4
weights2
y_true2*
batch_normalization_3_958425:*
batch_normalization_3_958427:*
batch_normalization_3_958429:*
batch_normalization_3_958431:"
hidden_12_958434:d
hidden_12_958436:d
out_z2_958440:d
out_z2_958442:
unknown
	unknown_0
identity

identity_1��-batch_normalization_3/StatefulPartitionedCall�!hidden_12/StatefulPartitionedCall�out_z2/StatefulPartitionedCall�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinput_4batch_normalization_3_958425batch_normalization_3_958427batch_normalization_3_958429batch_normalization_3_958431*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579832/
-batch_normalization_3/StatefulPartitionedCall�
!hidden_12/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0hidden_12_958434hidden_12_958436*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_12_layer_call_and_return_conditional_losses_9580912#
!hidden_12/StatefulPartitionedCall�
custom_relu2/PartitionedCallPartitionedCall*hidden_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9582272
custom_relu2/PartitionedCall�
out_z2/StatefulPartitionedCallStatefulPartitionedCall%custom_relu2/PartitionedCall:output:0out_z2_958440out_z2_958442*
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
GPU 2J 8� *K
fFRD
B__inference_out_z2_layer_call_and_return_conditional_losses_9581202 
out_z2/StatefulPartitionedCall�
out2/PartitionedCallPartitionedCall'out_z2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *I
fDRB
@__inference_out2_layer_call_and_return_conditional_losses_9581312
out2/PartitionedCall�
tf.math.abs_6/AbsAbs'out_z2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximum'out_z2/StatefulPartitionedCall:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMul'out_z2/StatefulPartitionedCall:output:0y_true2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulweights2 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Abs�
add_loss_3/PartitionedCallPartitionedCalltf.math.abs_7/Abs:y:0*
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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_9581562
add_loss_3/PartitionedCallx
IdentityIdentityout2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_3/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall"^hidden_12/StatefulPartitionedCall^out_z2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!hidden_12/StatefulPartitionedCall!hidden_12/StatefulPartitionedCall2@
out_z2/StatefulPartitionedCallout_z2/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�l
�
C__inference_model_3_layer_call_and_return_conditional_losses_958695
inputs_0
inputs_1
inputs_2K
=batch_normalization_3_assignmovingavg_readvariableop_resource:M
?batch_normalization_3_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:E
7batch_normalization_3_batchnorm_readvariableop_resource::
(hidden_12_matmul_readvariableop_resource:d7
)hidden_12_biasadd_readvariableop_resource:d7
%out_z2_matmul_readvariableop_resource:d4
&out_z2_biasadd_readvariableop_resource:
unknown
	unknown_0
identity

identity_1��%batch_normalization_3/AssignMovingAvg�4batch_normalization_3/AssignMovingAvg/ReadVariableOp�'batch_normalization_3/AssignMovingAvg_1�6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_3/batchnorm/ReadVariableOp�2batch_normalization_3/batchnorm/mul/ReadVariableOp� hidden_12/BiasAdd/ReadVariableOp�hidden_12/MatMul/ReadVariableOp�out_z2/BiasAdd/ReadVariableOp�out_z2/MatMul/ReadVariableOp�
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_3/moments/mean/reduction_indices�
"batch_normalization_3/moments/meanMeaninputs_0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2$
"batch_normalization_3/moments/mean�
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes

:2,
*batch_normalization_3/moments/StopGradient�
/batch_normalization_3/moments/SquaredDifferenceSquaredDifferenceinputs_03batch_normalization_3/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������21
/batch_normalization_3/moments/SquaredDifference�
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_3/moments/variance/reduction_indices�
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2(
&batch_normalization_3/moments/variance�
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization_3/moments/Squeeze�
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1�
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2-
+batch_normalization_3/AssignMovingAvg/decay�
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOp�
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes
:2+
)batch_normalization_3/AssignMovingAvg/sub�
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization_3/AssignMovingAvg/mul�
%batch_normalization_3/AssignMovingAvgAssignSubVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_3/AssignMovingAvg�
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2/
-batch_normalization_3/AssignMovingAvg_1/decay�
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2-
+batch_normalization_3/AssignMovingAvg_1/sub�
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2-
+batch_normalization_3/AssignMovingAvg_1/mul�
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_3/AssignMovingAvg_1�
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2'
%batch_normalization_3/batchnorm/add/y�
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/add�
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_3/batchnorm/Rsqrt�
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOp�
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/mul�
%batch_normalization_3/batchnorm/mul_1Mulinputs_0'batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_3/batchnorm/mul_1�
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_3/batchnorm/mul_2�
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp�
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/sub�
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_3/batchnorm/add_1�
hidden_12/MatMul/ReadVariableOpReadVariableOp(hidden_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
hidden_12/MatMul/ReadVariableOp�
hidden_12/MatMulMatMul)batch_normalization_3/batchnorm/add_1:z:0'hidden_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
hidden_12/MatMul�
 hidden_12/BiasAdd/ReadVariableOpReadVariableOp)hidden_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 hidden_12/BiasAdd/ReadVariableOp�
hidden_12/BiasAddBiasAddhidden_12/MatMul:product:0(hidden_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
hidden_12/BiasAddm
custom_relu2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
custom_relu2/mul/x�
custom_relu2/mulMulcustom_relu2/mul/x:output:0hidden_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
custom_relu2/mulm
custom_relu2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
custom_relu2/sub/x�
custom_relu2/subSubcustom_relu2/sub/x:output:0custom_relu2/mul:z:0*
T0*'
_output_shapes
:���������d2
custom_relu2/sub�
custom_relu2/MinimumMinimumhidden_12/BiasAdd:output:0custom_relu2/sub:z:0*
T0*'
_output_shapes
:���������d2
custom_relu2/Minimumu
custom_relu2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
custom_relu2/Maximum/y�
custom_relu2/MaximumMaximumcustom_relu2/Minimum:z:0custom_relu2/Maximum/y:output:0*
T0*'
_output_shapes
:���������d2
custom_relu2/Maximum�
out_z2/MatMul/ReadVariableOpReadVariableOp%out_z2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
out_z2/MatMul/ReadVariableOp�
out_z2/MatMulMatMulcustom_relu2/Maximum:z:0$out_z2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z2/MatMul�
out_z2/BiasAdd/ReadVariableOpReadVariableOp&out_z2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out_z2/BiasAdd/ReadVariableOp�
out_z2/BiasAddBiasAddout_z2/MatMul:product:0%out_z2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z2/BiasAddr
out2/SigmoidSigmoidout_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
out2/Sigmoidx
tf.math.abs_6/AbsAbsout_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximumout_z2/BiasAdd:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMulout_z2/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulinputs_1 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Absk
IdentityIdentityout2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identityp

Identity_1Identitytf.math.abs_7/Abs:y:0^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp!^hidden_12/BiasAdd/ReadVariableOp ^hidden_12/MatMul/ReadVariableOp^out_z2/BiasAdd/ReadVariableOp^out_z2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2D
 hidden_12/BiasAdd/ReadVariableOp hidden_12/BiasAdd/ReadVariableOp2B
hidden_12/MatMul/ReadVariableOphidden_12/MatMul/ReadVariableOp2>
out_z2/BiasAdd/ReadVariableOpout_z2/BiasAdd/ReadVariableOp2<
out_z2/MatMul/ReadVariableOpout_z2/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
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
�J
�	
"__inference__traced_restore_959005
file_prefix:
,assignvariableop_batch_normalization_3_gamma:;
-assignvariableop_1_batch_normalization_3_beta:B
4assignvariableop_2_batch_normalization_3_moving_mean:F
8assignvariableop_3_batch_normalization_3_moving_variance:5
#assignvariableop_4_hidden_12_kernel:d/
!assignvariableop_5_hidden_12_bias:d2
 assignvariableop_6_out_z2_kernel:d,
assignvariableop_7_out_z2_bias:&
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
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_3_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_3_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_3_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_3_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_hidden_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_hidden_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp assignvariableop_6_out_z2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_out_z2_biasIdentity_7:output:0"/device:CPU:0*
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
�
\
@__inference_out2_layer_call_and_return_conditional_losses_958131

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
�
�
*__inference_hidden_12_layer_call_fn_958784

inputs
unknown:d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_12_layer_call_and_return_conditional_losses_9580912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_custom_relu2_layer_call_fn_958799

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
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9581082
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
I
-__inference_custom_relu2_layer_call_fn_958804

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
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9582272
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
r
F__inference_add_loss_3_layer_call_and_return_conditional_losses_958156

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

�
E__inference_hidden_12_layer_call_and_return_conditional_losses_958091

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_out_z2_layer_call_and_return_conditional_losses_958845

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_model_3_layer_call_fn_958559
inputs_0
inputs_1
inputs_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:d
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
C__inference_model_3_layer_call_and_return_conditional_losses_9583202
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
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
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
(__inference_model_3_layer_call_fn_958531
inputs_0
inputs_1
inputs_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:d
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
C__inference_model_3_layer_call_and_return_conditional_losses_9581612
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
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
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
�W
�
!__inference__wrapped_model_957899
input_4
weights2
y_true2M
?model_3_batch_normalization_3_batchnorm_readvariableop_resource:Q
Cmodel_3_batch_normalization_3_batchnorm_mul_readvariableop_resource:O
Amodel_3_batch_normalization_3_batchnorm_readvariableop_1_resource:O
Amodel_3_batch_normalization_3_batchnorm_readvariableop_2_resource:B
0model_3_hidden_12_matmul_readvariableop_resource:d?
1model_3_hidden_12_biasadd_readvariableop_resource:d?
-model_3_out_z2_matmul_readvariableop_resource:d<
.model_3_out_z2_biasadd_readvariableop_resource:
model_3_957884
model_3_957889
identity��6model_3/batch_normalization_3/batchnorm/ReadVariableOp�8model_3/batch_normalization_3/batchnorm/ReadVariableOp_1�8model_3/batch_normalization_3/batchnorm/ReadVariableOp_2�:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp�(model_3/hidden_12/BiasAdd/ReadVariableOp�'model_3/hidden_12/MatMul/ReadVariableOp�%model_3/out_z2/BiasAdd/ReadVariableOp�$model_3/out_z2/MatMul/ReadVariableOp�
6model_3/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp?model_3_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype028
6model_3/batch_normalization_3/batchnorm/ReadVariableOp�
-model_3/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2/
-model_3/batch_normalization_3/batchnorm/add/y�
+model_3/batch_normalization_3/batchnorm/addAddV2>model_3/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_3/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2-
+model_3/batch_normalization_3/batchnorm/add�
-model_3/batch_normalization_3/batchnorm/RsqrtRsqrt/model_3/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:2/
-model_3/batch_normalization_3/batchnorm/Rsqrt�
:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_3_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02<
:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp�
+model_3/batch_normalization_3/batchnorm/mulMul1model_3/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2-
+model_3/batch_normalization_3/batchnorm/mul�
-model_3/batch_normalization_3/batchnorm/mul_1Mulinput_4/model_3/batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2/
-model_3/batch_normalization_3/batchnorm/mul_1�
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_3_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_1�
-model_3/batch_normalization_3/batchnorm/mul_2Mul@model_3/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_3/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:2/
-model_3/batch_normalization_3/batchnorm/mul_2�
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_3_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02:
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_2�
+model_3/batch_normalization_3/batchnorm/subSub@model_3/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_3/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2-
+model_3/batch_normalization_3/batchnorm/sub�
-model_3/batch_normalization_3/batchnorm/add_1AddV21model_3/batch_normalization_3/batchnorm/mul_1:z:0/model_3/batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2/
-model_3/batch_normalization_3/batchnorm/add_1�
'model_3/hidden_12/MatMul/ReadVariableOpReadVariableOp0model_3_hidden_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02)
'model_3/hidden_12/MatMul/ReadVariableOp�
model_3/hidden_12/MatMulMatMul1model_3/batch_normalization_3/batchnorm/add_1:z:0/model_3/hidden_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
model_3/hidden_12/MatMul�
(model_3/hidden_12/BiasAdd/ReadVariableOpReadVariableOp1model_3_hidden_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02*
(model_3/hidden_12/BiasAdd/ReadVariableOp�
model_3/hidden_12/BiasAddBiasAdd"model_3/hidden_12/MatMul:product:00model_3/hidden_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
model_3/hidden_12/BiasAdd}
model_3/custom_relu2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
model_3/custom_relu2/mul/x�
model_3/custom_relu2/mulMul#model_3/custom_relu2/mul/x:output:0"model_3/hidden_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
model_3/custom_relu2/mul}
model_3/custom_relu2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
model_3/custom_relu2/sub/x�
model_3/custom_relu2/subSub#model_3/custom_relu2/sub/x:output:0model_3/custom_relu2/mul:z:0*
T0*'
_output_shapes
:���������d2
model_3/custom_relu2/sub�
model_3/custom_relu2/MinimumMinimum"model_3/hidden_12/BiasAdd:output:0model_3/custom_relu2/sub:z:0*
T0*'
_output_shapes
:���������d2
model_3/custom_relu2/Minimum�
model_3/custom_relu2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
model_3/custom_relu2/Maximum/y�
model_3/custom_relu2/MaximumMaximum model_3/custom_relu2/Minimum:z:0'model_3/custom_relu2/Maximum/y:output:0*
T0*'
_output_shapes
:���������d2
model_3/custom_relu2/Maximum�
$model_3/out_z2/MatMul/ReadVariableOpReadVariableOp-model_3_out_z2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02&
$model_3/out_z2/MatMul/ReadVariableOp�
model_3/out_z2/MatMulMatMul model_3/custom_relu2/Maximum:z:0,model_3/out_z2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_3/out_z2/MatMul�
%model_3/out_z2/BiasAdd/ReadVariableOpReadVariableOp.model_3_out_z2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_3/out_z2/BiasAdd/ReadVariableOp�
model_3/out_z2/BiasAddBiasAddmodel_3/out_z2/MatMul:product:0-model_3/out_z2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_3/out_z2/BiasAdd�
model_3/out2/SigmoidSigmoidmodel_3/out_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_3/out2/Sigmoid�
model_3/tf.math.abs_6/AbsAbsmodel_3/out_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_3/tf.math.abs_6/Abs�
#model_3/tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_3/tf.math.maximum_3/Maximum/y�
!model_3/tf.math.maximum_3/MaximumMaximummodel_3/out_z2/BiasAdd:output:0,model_3/tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2#
!model_3/tf.math.maximum_3/Maximum�
model_3/tf.math.multiply_9/MulMulmodel_3/out_z2/BiasAdd:output:0y_true2*
T0*'
_output_shapes
:���������2 
model_3/tf.math.multiply_9/Mul�
model_3/tf.math.multiply_10/MulMulmodel_3_957884model_3/tf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2!
model_3/tf.math.multiply_10/Mul�
model_3/tf.math.subtract_3/SubSub%model_3/tf.math.maximum_3/Maximum:z:0"model_3/tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2 
model_3/tf.math.subtract_3/Sub�
model_3/tf.math.exp_3/ExpExp#model_3/tf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
model_3/tf.math.exp_3/Exp�
$model_3/tf.__operators__.add_6/AddV2AddV2model_3_957889model_3/tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2&
$model_3/tf.__operators__.add_6/AddV2�
model_3/tf.math.log_3/LogLog(model_3/tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
model_3/tf.math.log_3/Log�
$model_3/tf.__operators__.add_7/AddV2AddV2"model_3/tf.math.subtract_3/Sub:z:0model_3/tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2&
$model_3/tf.__operators__.add_7/AddV2�
model_3/tf.math.multiply_11/MulMulweights2(model_3/tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2!
model_3/tf.math.multiply_11/Mul�
2model_3/tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2model_3/tf.math.reduce_sum_3/Sum/reduction_indices�
 model_3/tf.math.reduce_sum_3/SumSum#model_3/tf.math.multiply_11/Mul:z:0;model_3/tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2"
 model_3/tf.math.reduce_sum_3/Sum�
model_3/tf.math.abs_7/AbsAbs)model_3/tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
model_3/tf.math.abs_7/Abss
IdentityIdentitymodel_3/out2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp7^model_3/batch_normalization_3/batchnorm/ReadVariableOp9^model_3/batch_normalization_3/batchnorm/ReadVariableOp_19^model_3/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp)^model_3/hidden_12/BiasAdd/ReadVariableOp(^model_3/hidden_12/MatMul/ReadVariableOp&^model_3/out_z2/BiasAdd/ReadVariableOp%^model_3/out_z2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2p
6model_3/batch_normalization_3/batchnorm/ReadVariableOp6model_3/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_18model_3/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_28model_3/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp2T
(model_3/hidden_12/BiasAdd/ReadVariableOp(model_3/hidden_12/BiasAdd/ReadVariableOp2R
'model_3/hidden_12/MatMul/ReadVariableOp'model_3/hidden_12/MatMul/ReadVariableOp2N
%model_3/out_z2/BiasAdd/ReadVariableOp%model_3/out_z2/BiasAdd/ReadVariableOp2L
$model_3/out_z2/MatMul/ReadVariableOp$model_3/out_z2/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�M
�
C__inference_model_3_layer_call_and_return_conditional_losses_958620
inputs_0
inputs_1
inputs_2E
7batch_normalization_3_batchnorm_readvariableop_resource:I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:G
9batch_normalization_3_batchnorm_readvariableop_1_resource:G
9batch_normalization_3_batchnorm_readvariableop_2_resource::
(hidden_12_matmul_readvariableop_resource:d7
)hidden_12_biasadd_readvariableop_resource:d7
%out_z2_matmul_readvariableop_resource:d4
&out_z2_biasadd_readvariableop_resource:
unknown
	unknown_0
identity

identity_1��.batch_normalization_3/batchnorm/ReadVariableOp�0batch_normalization_3/batchnorm/ReadVariableOp_1�0batch_normalization_3/batchnorm/ReadVariableOp_2�2batch_normalization_3/batchnorm/mul/ReadVariableOp� hidden_12/BiasAdd/ReadVariableOp�hidden_12/MatMul/ReadVariableOp�out_z2/BiasAdd/ReadVariableOp�out_z2/MatMul/ReadVariableOp�
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp�
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2'
%batch_normalization_3/batchnorm/add/y�
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/add�
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_3/batchnorm/Rsqrt�
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOp�
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/mul�
%batch_normalization_3/batchnorm/mul_1Mulinputs_0'batch_normalization_3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_3/batchnorm/mul_1�
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1�
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_3/batchnorm/mul_2�
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2�
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_3/batchnorm/sub�
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2'
%batch_normalization_3/batchnorm/add_1�
hidden_12/MatMul/ReadVariableOpReadVariableOp(hidden_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
hidden_12/MatMul/ReadVariableOp�
hidden_12/MatMulMatMul)batch_normalization_3/batchnorm/add_1:z:0'hidden_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
hidden_12/MatMul�
 hidden_12/BiasAdd/ReadVariableOpReadVariableOp)hidden_12_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 hidden_12/BiasAdd/ReadVariableOp�
hidden_12/BiasAddBiasAddhidden_12/MatMul:product:0(hidden_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
hidden_12/BiasAddm
custom_relu2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
custom_relu2/mul/x�
custom_relu2/mulMulcustom_relu2/mul/x:output:0hidden_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������d2
custom_relu2/mulm
custom_relu2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
custom_relu2/sub/x�
custom_relu2/subSubcustom_relu2/sub/x:output:0custom_relu2/mul:z:0*
T0*'
_output_shapes
:���������d2
custom_relu2/sub�
custom_relu2/MinimumMinimumhidden_12/BiasAdd:output:0custom_relu2/sub:z:0*
T0*'
_output_shapes
:���������d2
custom_relu2/Minimumu
custom_relu2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
custom_relu2/Maximum/y�
custom_relu2/MaximumMaximumcustom_relu2/Minimum:z:0custom_relu2/Maximum/y:output:0*
T0*'
_output_shapes
:���������d2
custom_relu2/Maximum�
out_z2/MatMul/ReadVariableOpReadVariableOp%out_z2_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
out_z2/MatMul/ReadVariableOp�
out_z2/MatMulMatMulcustom_relu2/Maximum:z:0$out_z2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z2/MatMul�
out_z2/BiasAdd/ReadVariableOpReadVariableOp&out_z2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out_z2/BiasAdd/ReadVariableOp�
out_z2/BiasAddBiasAddout_z2/MatMul:product:0%out_z2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
out_z2/BiasAddr
out2/SigmoidSigmoidout_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
out2/Sigmoidx
tf.math.abs_6/AbsAbsout_z2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximumout_z2/BiasAdd:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMulout_z2/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulinputs_1 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Absk
IdentityIdentityout2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identityp

Identity_1Identitytf.math.abs_7/Abs:y:0^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp!^hidden_12/BiasAdd/ReadVariableOp ^hidden_12/MatMul/ReadVariableOp^out_z2/BiasAdd/ReadVariableOp^out_z2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2D
 hidden_12/BiasAdd/ReadVariableOp hidden_12/BiasAdd/ReadVariableOp2B
hidden_12/MatMul/ReadVariableOphidden_12/MatMul/ReadVariableOp2>
out_z2/BiasAdd/ReadVariableOpout_z2/BiasAdd/ReadVariableOp2<
out_z2/MatMul/ReadVariableOpout_z2/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
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
$__inference_signature_wrapper_958503
input_4
weights2
y_true2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4weights2y_true2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_9578992
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
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�2
�
C__inference_model_3_layer_call_and_return_conditional_losses_958161

inputs
inputs_1
inputs_2*
batch_normalization_3_958072:*
batch_normalization_3_958074:*
batch_normalization_3_958076:*
batch_normalization_3_958078:"
hidden_12_958092:d
hidden_12_958094:d
out_z2_958121:d
out_z2_958123:
unknown
	unknown_0
identity

identity_1��-batch_normalization_3/StatefulPartitionedCall�!hidden_12/StatefulPartitionedCall�out_z2/StatefulPartitionedCall�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_958072batch_normalization_3_958074batch_normalization_3_958076batch_normalization_3_958078*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579232/
-batch_normalization_3/StatefulPartitionedCall�
!hidden_12/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0hidden_12_958092hidden_12_958094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_12_layer_call_and_return_conditional_losses_9580912#
!hidden_12/StatefulPartitionedCall�
custom_relu2/PartitionedCallPartitionedCall*hidden_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9581082
custom_relu2/PartitionedCall�
out_z2/StatefulPartitionedCallStatefulPartitionedCall%custom_relu2/PartitionedCall:output:0out_z2_958121out_z2_958123*
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
GPU 2J 8� *K
fFRD
B__inference_out_z2_layer_call_and_return_conditional_losses_9581202 
out_z2/StatefulPartitionedCall�
out2/PartitionedCallPartitionedCall'out_z2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *I
fDRB
@__inference_out2_layer_call_and_return_conditional_losses_9581312
out2/PartitionedCall�
tf.math.abs_6/AbsAbs'out_z2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximum'out_z2/StatefulPartitionedCall:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMul'out_z2/StatefulPartitionedCall:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulinputs_1 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Abs�
add_loss_3/PartitionedCallPartitionedCalltf.math.abs_7/Abs:y:0*
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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_9581562
add_loss_3/PartitionedCallx
IdentityIdentityout2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_3/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall"^hidden_12/StatefulPartitionedCall^out_z2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!hidden_12/StatefulPartitionedCall!hidden_12/StatefulPartitionedCall2@
out_z2/StatefulPartitionedCallout_z2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
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
�,
�
__inference__traced_save_958944
file_prefix:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop/
+savev2_hidden_12_kernel_read_readvariableop-
)savev2_hidden_12_bias_read_readvariableop,
(savev2_out_z2_kernel_read_readvariableop*
&savev2_out_z2_bias_read_readvariableop(
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop+savev2_hidden_12_kernel_read_readvariableop)savev2_hidden_12_bias_read_readvariableop(savev2_out_z2_kernel_read_readvariableop&savev2_out_z2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const_2"/device:CPU:0*
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

identity_1Identity_1:output:0*a
_input_shapesP
N: :::::d:d:d:: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:d: 
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
�2
�
C__inference_model_3_layer_call_and_return_conditional_losses_958320

inputs
inputs_1
inputs_2*
batch_normalization_3_958277:*
batch_normalization_3_958279:*
batch_normalization_3_958281:*
batch_normalization_3_958283:"
hidden_12_958286:d
hidden_12_958288:d
out_z2_958292:d
out_z2_958294:
unknown
	unknown_0
identity

identity_1��-batch_normalization_3/StatefulPartitionedCall�!hidden_12/StatefulPartitionedCall�out_z2/StatefulPartitionedCall�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_958277batch_normalization_3_958279batch_normalization_3_958281batch_normalization_3_958283*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579832/
-batch_normalization_3/StatefulPartitionedCall�
!hidden_12/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0hidden_12_958286hidden_12_958288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_12_layer_call_and_return_conditional_losses_9580912#
!hidden_12/StatefulPartitionedCall�
custom_relu2/PartitionedCallPartitionedCall*hidden_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9582272
custom_relu2/PartitionedCall�
out_z2/StatefulPartitionedCallStatefulPartitionedCall%custom_relu2/PartitionedCall:output:0out_z2_958292out_z2_958294*
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
GPU 2J 8� *K
fFRD
B__inference_out_z2_layer_call_and_return_conditional_losses_9581202 
out_z2/StatefulPartitionedCall�
out2/PartitionedCallPartitionedCall'out_z2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *I
fDRB
@__inference_out2_layer_call_and_return_conditional_losses_9581312
out2/PartitionedCall�
tf.math.abs_6/AbsAbs'out_z2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximum'out_z2/StatefulPartitionedCall:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMul'out_z2/StatefulPartitionedCall:output:0inputs_2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulinputs_1 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Abs�
add_loss_3/PartitionedCallPartitionedCalltf.math.abs_7/Abs:y:0*
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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_9581562
add_loss_3/PartitionedCallx
IdentityIdentityout2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_3/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall"^hidden_12/StatefulPartitionedCall^out_z2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!hidden_12/StatefulPartitionedCall!hidden_12/StatefulPartitionedCall2@
out_z2/StatefulPartitionedCallout_z2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
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
�
A
%__inference_out2_layer_call_fn_958850

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
GPU 2J 8� *I
fDRB
@__inference_out2_layer_call_and_return_conditional_losses_9581312
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
�
d
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958227

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x[
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������d2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x\
subSubsub/x:output:0mul:z:0*
T0*'
_output_shapes
:���������d2
sub`
MinimumMinimuminputssub:z:0*
T0*'
_output_shapes
:���������d2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yp
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*'
_output_shapes
:���������d2	
Maximum_
IdentityIdentityMaximum:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
'__inference_out_z2_layer_call_fn_958835

inputs
unknown:d
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
GPU 2J 8� *K
fFRD
B__inference_out_z2_layer_call_and_return_conditional_losses_9581202
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
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
r
F__inference_add_loss_3_layer_call_and_return_conditional_losses_958866

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
6__inference_batch_normalization_3_layer_call_fn_958721

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_hidden_12_layer_call_and_return_conditional_losses_958794

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958826

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x[
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������d2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x\
subSubsub/x:output:0mul:z:0*
T0*'
_output_shapes
:���������d2
sub`
MinimumMinimuminputssub:z:0*
T0*'
_output_shapes
:���������d2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yp
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*'
_output_shapes
:���������d2	
Maximum_
IdentityIdentityMaximum:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�*
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958775

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
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

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
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

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
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
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_957923

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�2
�
C__inference_model_3_layer_call_and_return_conditional_losses_958420
input_4
weights2
y_true2*
batch_normalization_3_958377:*
batch_normalization_3_958379:*
batch_normalization_3_958381:*
batch_normalization_3_958383:"
hidden_12_958386:d
hidden_12_958388:d
out_z2_958392:d
out_z2_958394:
unknown
	unknown_0
identity

identity_1��-batch_normalization_3/StatefulPartitionedCall�!hidden_12/StatefulPartitionedCall�out_z2/StatefulPartitionedCall�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinput_4batch_normalization_3_958377batch_normalization_3_958379batch_normalization_3_958381batch_normalization_3_958383*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579232/
-batch_normalization_3/StatefulPartitionedCall�
!hidden_12/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0hidden_12_958386hidden_12_958388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_12_layer_call_and_return_conditional_losses_9580912#
!hidden_12/StatefulPartitionedCall�
custom_relu2/PartitionedCallPartitionedCall*hidden_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_custom_relu2_layer_call_and_return_conditional_losses_9581082
custom_relu2/PartitionedCall�
out_z2/StatefulPartitionedCallStatefulPartitionedCall%custom_relu2/PartitionedCall:output:0out_z2_958392out_z2_958394*
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
GPU 2J 8� *K
fFRD
B__inference_out_z2_layer_call_and_return_conditional_losses_9581202 
out_z2/StatefulPartitionedCall�
out2/PartitionedCallPartitionedCall'out_z2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *I
fDRB
@__inference_out2_layer_call_and_return_conditional_losses_9581312
out2/PartitionedCall�
tf.math.abs_6/AbsAbs'out_z2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.abs_6/Abs
tf.math.maximum_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.maximum_3/Maximum/y�
tf.math.maximum_3/MaximumMaximum'out_z2/StatefulPartitionedCall:output:0$tf.math.maximum_3/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
tf.math.maximum_3/Maximum�
tf.math.multiply_9/MulMul'out_z2/StatefulPartitionedCall:output:0y_true2*
T0*'
_output_shapes
:���������2
tf.math.multiply_9/Mul�
tf.math.multiply_10/MulMulunknowntf.math.abs_6/Abs:y:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_10/Mul�
tf.math.subtract_3/SubSubtf.math.maximum_3/Maximum:z:0tf.math.multiply_9/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_3/Sub|
tf.math.exp_3/ExpExptf.math.multiply_10/Mul:z:0*
T0*'
_output_shapes
:���������2
tf.math.exp_3/Exp�
tf.__operators__.add_6/AddV2AddV2	unknown_0tf.math.exp_3/Exp:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_6/AddV2�
tf.math.log_3/LogLog tf.__operators__.add_6/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.log_3/Log�
tf.__operators__.add_7/AddV2AddV2tf.math.subtract_3/Sub:z:0tf.math.log_3/Log:y:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
tf.math.multiply_11/MulMulweights2 tf.__operators__.add_7/AddV2:z:0*
T0*'
_output_shapes
:���������2
tf.math.multiply_11/Mul�
*tf.math.reduce_sum_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*tf.math.reduce_sum_3/Sum/reduction_indices�
tf.math.reduce_sum_3/SumSumtf.math.multiply_11/Mul:z:03tf.math.reduce_sum_3/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
tf.math.reduce_sum_3/Sum~
tf.math.abs_7/AbsAbs!tf.math.reduce_sum_3/Sum:output:0*
T0*#
_output_shapes
:���������2
tf.math.abs_7/Abs�
add_loss_3/PartitionedCallPartitionedCalltf.math.abs_7/Abs:y:0*
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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_9581562
add_loss_3/PartitionedCallx
IdentityIdentityout2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity#add_loss_3/PartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������2

Identity_1�
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall"^hidden_12/StatefulPartitionedCall^out_z2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:���������:���������:���������: : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!hidden_12/StatefulPartitionedCall!hidden_12/StatefulPartitionedCall2@
out_z2/StatefulPartitionedCallout_z2/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�
d
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958815

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x[
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������d2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x\
subSubsub/x:output:0mul:z:0*
T0*'
_output_shapes
:���������d2
sub`
MinimumMinimuminputssub:z:0*
T0*'
_output_shapes
:���������d2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yp
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*'
_output_shapes
:���������d2	
Maximum_
IdentityIdentityMaximum:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_model_3_layer_call_fn_958185
input_4
weights2
y_true2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4weights2y_true2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
C__inference_model_3_layer_call_and_return_conditional_losses_9581612
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
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�
d
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958108

inputs
identityS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mul/x[
mulMulmul/x:output:0inputs*
T0*'
_output_shapes
:���������d2
mulS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �B2
sub/x\
subSubsub/x:output:0mul:z:0*
T0*'
_output_shapes
:���������d2
sub`
MinimumMinimuminputssub:z:0*
T0*'
_output_shapes
:���������d2	
Minimum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yp
MaximumMaximumMinimum:z:0Maximum/y:output:0*
T0*'
_output_shapes
:���������d2	
Maximum_
IdentityIdentityMaximum:z:0*
T0*'
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
G
+__inference_add_loss_3_layer_call_fn_958861

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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_9581562
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
�
�
(__inference_model_3_layer_call_fn_958372
input_4
weights2
y_true2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_4weights2y_true2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
C__inference_model_3_layer_call_and_return_conditional_losses_9583202
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
M:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_4:QM
'
_output_shapes
:���������
"
_user_specified_name
weights2:PL
'
_output_shapes
:���������
!
_user_specified_name	y_true2:

_output_shapes
: :

_output_shapes
: 
�*
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_957983

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
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

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
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

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
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
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
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
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_3_layer_call_fn_958708

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9579232
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_out_z2_layer_call_and_return_conditional_losses_958120

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
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
input_40
serving_default_input_4:0���������
=
weights21
serving_default_weights2:0���������
;
y_true20
serving_default_y_true2:0���������8
out20
StatefulPartitionedCall:0���������tensorflow/serving/predict:Њ
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
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
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
": d2hidden_12/kernel
:d2hidden_12/bias
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
:d2out_z2/kernel
:2out_z2/bias
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
!__inference__wrapped_model_957899input_4weights2y_true2"�
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
(__inference_model_3_layer_call_fn_958185
(__inference_model_3_layer_call_fn_958531
(__inference_model_3_layer_call_fn_958559
(__inference_model_3_layer_call_fn_958372�
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
C__inference_model_3_layer_call_and_return_conditional_losses_958620
C__inference_model_3_layer_call_and_return_conditional_losses_958695
C__inference_model_3_layer_call_and_return_conditional_losses_958420
C__inference_model_3_layer_call_and_return_conditional_losses_958468�
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
6__inference_batch_normalization_3_layer_call_fn_958708
6__inference_batch_normalization_3_layer_call_fn_958721�
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
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958741
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958775�
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
*__inference_hidden_12_layer_call_fn_958784�
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
E__inference_hidden_12_layer_call_and_return_conditional_losses_958794�
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
-__inference_custom_relu2_layer_call_fn_958799
-__inference_custom_relu2_layer_call_fn_958804�
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
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958815
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958826�
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
'__inference_out_z2_layer_call_fn_958835�
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
B__inference_out_z2_layer_call_and_return_conditional_losses_958845�
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
%__inference_out2_layer_call_fn_958850�
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
@__inference_out2_layer_call_and_return_conditional_losses_958855�
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
+__inference_add_loss_3_layer_call_fn_958861�
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
F__inference_add_loss_3_layer_call_and_return_conditional_losses_958866�
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
$__inference_signature_wrapper_958503input_4weights2y_true2"�
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
!__inference__wrapped_model_957899�! &'01��|�y
r�o
m�j
!�
input_4���������
"�
weights2���������
!�
y_true2���������
� "+�(
&
out2�
out2����������
F__inference_add_loss_3_layer_call_and_return_conditional_losses_958866k+�(
!�
�
inputs���������
� "<�9
�
0���������
�
�
1/0���������r
+__inference_add_loss_3_layer_call_fn_958861C+�(
!�
�
inputs���������
� "�����������
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958741b! 3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_958775b !3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_3_layer_call_fn_958708U! 3�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_3_layer_call_fn_958721U !3�0
)�&
 �
inputs���������
p
� "�����������
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958815`7�4
-�*
 �
inputs���������d

 
p 
� "%�"
�
0���������d
� �
H__inference_custom_relu2_layer_call_and_return_conditional_losses_958826`7�4
-�*
 �
inputs���������d

 
p
� "%�"
�
0���������d
� �
-__inference_custom_relu2_layer_call_fn_958799S7�4
-�*
 �
inputs���������d

 
p 
� "����������d�
-__inference_custom_relu2_layer_call_fn_958804S7�4
-�*
 �
inputs���������d

 
p
� "����������d�
E__inference_hidden_12_layer_call_and_return_conditional_losses_958794\&'/�,
%�"
 �
inputs���������
� "%�"
�
0���������d
� }
*__inference_hidden_12_layer_call_fn_958784O&'/�,
%�"
 �
inputs���������
� "����������d�
C__inference_model_3_layer_call_and_return_conditional_losses_958420�! &'01�����
z�w
m�j
!�
input_4���������
"�
weights2���������
!�
y_true2���������
p 

 
� "@�=
�
0���������
�
�
1/0����������
C__inference_model_3_layer_call_and_return_conditional_losses_958468� !&'01�����
z�w
m�j
!�
input_4���������
"�
weights2���������
!�
y_true2���������
p

 
� "@�=
�
0���������
�
�
1/0����������
C__inference_model_3_layer_call_and_return_conditional_losses_958620�! &'01�����
|�y
o�l
"�
inputs/0���������
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
C__inference_model_3_layer_call_and_return_conditional_losses_958695� !&'01�����
|�y
o�l
"�
inputs/0���������
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
(__inference_model_3_layer_call_fn_958185�! &'01�����
z�w
m�j
!�
input_4���������
"�
weights2���������
!�
y_true2���������
p 

 
� "�����������
(__inference_model_3_layer_call_fn_958372� !&'01�����
z�w
m�j
!�
input_4���������
"�
weights2���������
!�
y_true2���������
p

 
� "�����������
(__inference_model_3_layer_call_fn_958531�! &'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p 

 
� "�����������
(__inference_model_3_layer_call_fn_958559� !&'01�����
|�y
o�l
"�
inputs/0���������
"�
inputs/1���������
"�
inputs/2���������
p

 
� "�����������
@__inference_out2_layer_call_and_return_conditional_losses_958855X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� t
%__inference_out2_layer_call_fn_958850K/�,
%�"
 �
inputs���������
� "�����������
B__inference_out_z2_layer_call_and_return_conditional_losses_958845\01/�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� z
'__inference_out_z2_layer_call_fn_958835O01/�,
%�"
 �
inputs���������d
� "�����������
$__inference_signature_wrapper_958503�! &'01�����
� 
���
,
input_4!�
input_4���������
.
weights2"�
weights2���������
,
y_true2!�
y_true2���������"+�(
&
out2�
out2���������