λΉ&
Ι
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Α
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
φ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ΥΤ$

batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_28/gamma

0batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_28/gamma*
_output_shapes
:*
dtype0

batch_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_28/beta

/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes
:*
dtype0

"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_28/moving_mean

6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes
:*
dtype0
€
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_28/moving_variance

:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes
:*
dtype0

batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_29/gamma

0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes
:*
dtype0

batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_29/beta

/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes
:*
dtype0

"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_29/moving_mean

6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes
:*
dtype0
€
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_29/moving_variance

:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
h

AdamW/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
AdamW/iter
a
AdamW/iter/Read/ReadVariableOpReadVariableOp
AdamW/iter*
_output_shapes
: *
dtype0	
l
AdamW/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamW/beta_1
e
 AdamW/beta_1/Read/ReadVariableOpReadVariableOpAdamW/beta_1*
_output_shapes
: *
dtype0
l
AdamW/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamW/beta_2
e
 AdamW/beta_2/Read/ReadVariableOpReadVariableOpAdamW/beta_2*
_output_shapes
: *
dtype0
j
AdamW/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamW/decay
c
AdamW/decay/Read/ReadVariableOpReadVariableOpAdamW/decay*
_output_shapes
: *
dtype0
z
AdamW/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdamW/learning_rate
s
'AdamW/learning_rate/Read/ReadVariableOpReadVariableOpAdamW/learning_rate*
_output_shapes
: *
dtype0
x
AdamW/weight_decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdamW/weight_decay
q
&AdamW/weight_decay/Read/ReadVariableOpReadVariableOpAdamW/weight_decay*
_output_shapes
: *
dtype0

lstm_28/lstm_cell_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_28/lstm_cell_28/kernel

/lstm_28/lstm_cell_28/kernel/Read/ReadVariableOpReadVariableOplstm_28/lstm_cell_28/kernel*
_output_shapes

: *
dtype0
¦
%lstm_28/lstm_cell_28/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_28/lstm_cell_28/recurrent_kernel

9lstm_28/lstm_cell_28/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_28/lstm_cell_28/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_28/lstm_cell_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_28/lstm_cell_28/bias

-lstm_28/lstm_cell_28/bias/Read/ReadVariableOpReadVariableOplstm_28/lstm_cell_28/bias*
_output_shapes
: *
dtype0

lstm_29/lstm_cell_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_29/lstm_cell_29/kernel

/lstm_29/lstm_cell_29/kernel/Read/ReadVariableOpReadVariableOplstm_29/lstm_cell_29/kernel*
_output_shapes

: *
dtype0
¦
%lstm_29/lstm_cell_29/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_29/lstm_cell_29/recurrent_kernel

9lstm_29/lstm_cell_29/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_29/lstm_cell_29/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_29/lstm_cell_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_29/lstm_cell_29/bias

-lstm_29/lstm_cell_29/bias/Read/ReadVariableOpReadVariableOplstm_29/lstm_cell_29/bias*
_output_shapes
: *
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
 
$AdamW/batch_normalization_28/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$AdamW/batch_normalization_28/gamma/m

8AdamW/batch_normalization_28/gamma/m/Read/ReadVariableOpReadVariableOp$AdamW/batch_normalization_28/gamma/m*
_output_shapes
:*
dtype0

#AdamW/batch_normalization_28/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/batch_normalization_28/beta/m

7AdamW/batch_normalization_28/beta/m/Read/ReadVariableOpReadVariableOp#AdamW/batch_normalization_28/beta/m*
_output_shapes
:*
dtype0
 
$AdamW/batch_normalization_29/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$AdamW/batch_normalization_29/gamma/m

8AdamW/batch_normalization_29/gamma/m/Read/ReadVariableOpReadVariableOp$AdamW/batch_normalization_29/gamma/m*
_output_shapes
:*
dtype0

#AdamW/batch_normalization_29/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/batch_normalization_29/beta/m

7AdamW/batch_normalization_29/beta/m/Read/ReadVariableOpReadVariableOp#AdamW/batch_normalization_29/beta/m*
_output_shapes
:*
dtype0

AdamW/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdamW/dense_14/kernel/m

+AdamW/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdamW/dense_14/kernel/m*
_output_shapes

:*
dtype0

AdamW/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamW/dense_14/bias/m
{
)AdamW/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdamW/dense_14/bias/m*
_output_shapes
:*
dtype0
’
#AdamW/lstm_28/lstm_cell_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#AdamW/lstm_28/lstm_cell_28/kernel/m

7AdamW/lstm_28/lstm_cell_28/kernel/m/Read/ReadVariableOpReadVariableOp#AdamW/lstm_28/lstm_cell_28/kernel/m*
_output_shapes

: *
dtype0
Ά
-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/m
―
AAdamW/lstm_28/lstm_cell_28/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/m*
_output_shapes

: *
dtype0

!AdamW/lstm_28/lstm_cell_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!AdamW/lstm_28/lstm_cell_28/bias/m

5AdamW/lstm_28/lstm_cell_28/bias/m/Read/ReadVariableOpReadVariableOp!AdamW/lstm_28/lstm_cell_28/bias/m*
_output_shapes
: *
dtype0
’
#AdamW/lstm_29/lstm_cell_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#AdamW/lstm_29/lstm_cell_29/kernel/m

7AdamW/lstm_29/lstm_cell_29/kernel/m/Read/ReadVariableOpReadVariableOp#AdamW/lstm_29/lstm_cell_29/kernel/m*
_output_shapes

: *
dtype0
Ά
-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/m
―
AAdamW/lstm_29/lstm_cell_29/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/m*
_output_shapes

: *
dtype0

!AdamW/lstm_29/lstm_cell_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!AdamW/lstm_29/lstm_cell_29/bias/m

5AdamW/lstm_29/lstm_cell_29/bias/m/Read/ReadVariableOpReadVariableOp!AdamW/lstm_29/lstm_cell_29/bias/m*
_output_shapes
: *
dtype0
 
$AdamW/batch_normalization_28/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$AdamW/batch_normalization_28/gamma/v

8AdamW/batch_normalization_28/gamma/v/Read/ReadVariableOpReadVariableOp$AdamW/batch_normalization_28/gamma/v*
_output_shapes
:*
dtype0

#AdamW/batch_normalization_28/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/batch_normalization_28/beta/v

7AdamW/batch_normalization_28/beta/v/Read/ReadVariableOpReadVariableOp#AdamW/batch_normalization_28/beta/v*
_output_shapes
:*
dtype0
 
$AdamW/batch_normalization_29/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$AdamW/batch_normalization_29/gamma/v

8AdamW/batch_normalization_29/gamma/v/Read/ReadVariableOpReadVariableOp$AdamW/batch_normalization_29/gamma/v*
_output_shapes
:*
dtype0

#AdamW/batch_normalization_29/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#AdamW/batch_normalization_29/beta/v

7AdamW/batch_normalization_29/beta/v/Read/ReadVariableOpReadVariableOp#AdamW/batch_normalization_29/beta/v*
_output_shapes
:*
dtype0

AdamW/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdamW/dense_14/kernel/v

+AdamW/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdamW/dense_14/kernel/v*
_output_shapes

:*
dtype0

AdamW/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamW/dense_14/bias/v
{
)AdamW/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdamW/dense_14/bias/v*
_output_shapes
:*
dtype0
’
#AdamW/lstm_28/lstm_cell_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#AdamW/lstm_28/lstm_cell_28/kernel/v

7AdamW/lstm_28/lstm_cell_28/kernel/v/Read/ReadVariableOpReadVariableOp#AdamW/lstm_28/lstm_cell_28/kernel/v*
_output_shapes

: *
dtype0
Ά
-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/v
―
AAdamW/lstm_28/lstm_cell_28/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/v*
_output_shapes

: *
dtype0

!AdamW/lstm_28/lstm_cell_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!AdamW/lstm_28/lstm_cell_28/bias/v

5AdamW/lstm_28/lstm_cell_28/bias/v/Read/ReadVariableOpReadVariableOp!AdamW/lstm_28/lstm_cell_28/bias/v*
_output_shapes
: *
dtype0
’
#AdamW/lstm_29/lstm_cell_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#AdamW/lstm_29/lstm_cell_29/kernel/v

7AdamW/lstm_29/lstm_cell_29/kernel/v/Read/ReadVariableOpReadVariableOp#AdamW/lstm_29/lstm_cell_29/kernel/v*
_output_shapes

: *
dtype0
Ά
-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/v
―
AAdamW/lstm_29/lstm_cell_29/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/v*
_output_shapes

: *
dtype0

!AdamW/lstm_29/lstm_cell_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!AdamW/lstm_29/lstm_cell_29/bias/v

5AdamW/lstm_29/lstm_cell_29/bias/v/Read/ReadVariableOpReadVariableOp!AdamW/lstm_29/lstm_cell_29/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
‘[
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*άZ
value?ZBΟZ BΘZ

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Α
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
Υ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
Α
#cell
$
state_spec
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)_random_generator
*__call__
*+&call_and_return_all_conditional_losses*
Υ
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses*
¦

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
Ζ
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_rate
Dweight_decaymm-m.m7m8mEmFmGmHmImJmvv-v.v 7v‘8v’Ev£Fv€Gv₯Hv¦Iv§Jv¨*
z
E0
F1
G2
3
4
5
6
H7
I8
J9
-10
.11
/12
013
714
815*
Z
E0
F1
G2
3
4
H5
I6
J7
-8
.9
710
811*
* 
°
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Pserving_default* 
γ
Q
state_size

Ekernel
Frecurrent_kernel
Gbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V_random_generator
W__call__
*X&call_and_return_all_conditional_losses*
* 

E0
F1
G2*

E0
F1
G2*
* 


Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_28/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_28/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_28/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_28/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
γ
d
state_size

Hkernel
Irecurrent_kernel
Jbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses*
* 

H0
I1
J2*

H0
I1
J2*
* 


lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
%	variables
&trainable_variables
'regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
-0
.1
/2
03*

-0
.1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUE
AdamW/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEAdamW/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEAdamW/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEAdamW/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdamW/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdamW/weight_decay1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_28/lstm_cell_28/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_28/lstm_cell_28/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_28/lstm_cell_28/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_29/lstm_cell_29/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_29/lstm_cell_29/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_29/lstm_cell_29/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
/2
03*
'
0
1
2
3
4*

|0
}1*
* 
* 
* 
* 

E0
F1
G2*

E0
F1
G2*
* 

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 

H0
I1
J2*

H0
I1
J2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

#0*
* 
* 
* 

/0
01*
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

VARIABLE_VALUE$AdamW/batch_normalization_28/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#AdamW/batch_normalization_28/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$AdamW/batch_normalization_29/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#AdamW/batch_normalization_29/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdamW/dense_14/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdamW/dense_14/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#AdamW/lstm_28/lstm_cell_28/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!AdamW/lstm_28/lstm_cell_28/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#AdamW/lstm_29/lstm_cell_29/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!AdamW/lstm_29/lstm_cell_29/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$AdamW/batch_normalization_28/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#AdamW/batch_normalization_28/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$AdamW/batch_normalization_29/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#AdamW/batch_normalization_29/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdamW/dense_14/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdamW/dense_14/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#AdamW/lstm_28/lstm_cell_28/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!AdamW/lstm_28/lstm_cell_28/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#AdamW/lstm_29/lstm_cell_29/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!AdamW/lstm_29/lstm_cell_29/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_28_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
Δ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_28_inputlstm_28/lstm_cell_28/kernel%lstm_28/lstm_cell_28/recurrent_kernellstm_28/lstm_cell_28/bias&batch_normalization_28/moving_variancebatch_normalization_28/gamma"batch_normalization_28/moving_meanbatch_normalization_28/betalstm_29/lstm_cell_29/kernel%lstm_29/lstm_cell_29/recurrent_kernellstm_29/lstm_cell_29/bias&batch_normalization_29/moving_variancebatch_normalization_29/gamma"batch_normalization_29/moving_meanbatch_normalization_29/betadense_14/kerneldense_14/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_196209
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_28/gamma/Read/ReadVariableOp/batch_normalization_28/beta/Read/ReadVariableOp6batch_normalization_28/moving_mean/Read/ReadVariableOp:batch_normalization_28/moving_variance/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpAdamW/iter/Read/ReadVariableOp AdamW/beta_1/Read/ReadVariableOp AdamW/beta_2/Read/ReadVariableOpAdamW/decay/Read/ReadVariableOp'AdamW/learning_rate/Read/ReadVariableOp&AdamW/weight_decay/Read/ReadVariableOp/lstm_28/lstm_cell_28/kernel/Read/ReadVariableOp9lstm_28/lstm_cell_28/recurrent_kernel/Read/ReadVariableOp-lstm_28/lstm_cell_28/bias/Read/ReadVariableOp/lstm_29/lstm_cell_29/kernel/Read/ReadVariableOp9lstm_29/lstm_cell_29/recurrent_kernel/Read/ReadVariableOp-lstm_29/lstm_cell_29/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8AdamW/batch_normalization_28/gamma/m/Read/ReadVariableOp7AdamW/batch_normalization_28/beta/m/Read/ReadVariableOp8AdamW/batch_normalization_29/gamma/m/Read/ReadVariableOp7AdamW/batch_normalization_29/beta/m/Read/ReadVariableOp+AdamW/dense_14/kernel/m/Read/ReadVariableOp)AdamW/dense_14/bias/m/Read/ReadVariableOp7AdamW/lstm_28/lstm_cell_28/kernel/m/Read/ReadVariableOpAAdamW/lstm_28/lstm_cell_28/recurrent_kernel/m/Read/ReadVariableOp5AdamW/lstm_28/lstm_cell_28/bias/m/Read/ReadVariableOp7AdamW/lstm_29/lstm_cell_29/kernel/m/Read/ReadVariableOpAAdamW/lstm_29/lstm_cell_29/recurrent_kernel/m/Read/ReadVariableOp5AdamW/lstm_29/lstm_cell_29/bias/m/Read/ReadVariableOp8AdamW/batch_normalization_28/gamma/v/Read/ReadVariableOp7AdamW/batch_normalization_28/beta/v/Read/ReadVariableOp8AdamW/batch_normalization_29/gamma/v/Read/ReadVariableOp7AdamW/batch_normalization_29/beta/v/Read/ReadVariableOp+AdamW/dense_14/kernel/v/Read/ReadVariableOp)AdamW/dense_14/bias/v/Read/ReadVariableOp7AdamW/lstm_28/lstm_cell_28/kernel/v/Read/ReadVariableOpAAdamW/lstm_28/lstm_cell_28/recurrent_kernel/v/Read/ReadVariableOp5AdamW/lstm_28/lstm_cell_28/bias/v/Read/ReadVariableOp7AdamW/lstm_29/lstm_cell_29/kernel/v/Read/ReadVariableOpAAdamW/lstm_29/lstm_cell_29/recurrent_kernel/v/Read/ReadVariableOp5AdamW/lstm_29/lstm_cell_29/bias/v/Read/ReadVariableOpConst*?
Tin8
624	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_197990

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_variancebatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_variancedense_14/kerneldense_14/bias
AdamW/iterAdamW/beta_1AdamW/beta_2AdamW/decayAdamW/learning_rateAdamW/weight_decaylstm_28/lstm_cell_28/kernel%lstm_28/lstm_cell_28/recurrent_kernellstm_28/lstm_cell_28/biaslstm_29/lstm_cell_29/kernel%lstm_29/lstm_cell_29/recurrent_kernellstm_29/lstm_cell_29/biastotalcounttotal_1count_1$AdamW/batch_normalization_28/gamma/m#AdamW/batch_normalization_28/beta/m$AdamW/batch_normalization_29/gamma/m#AdamW/batch_normalization_29/beta/mAdamW/dense_14/kernel/mAdamW/dense_14/bias/m#AdamW/lstm_28/lstm_cell_28/kernel/m-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/m!AdamW/lstm_28/lstm_cell_28/bias/m#AdamW/lstm_29/lstm_cell_29/kernel/m-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/m!AdamW/lstm_29/lstm_cell_29/bias/m$AdamW/batch_normalization_28/gamma/v#AdamW/batch_normalization_28/beta/v$AdamW/batch_normalization_29/gamma/v#AdamW/batch_normalization_29/beta/vAdamW/dense_14/kernel/vAdamW/dense_14/bias/v#AdamW/lstm_28/lstm_cell_28/kernel/v-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/v!AdamW/lstm_28/lstm_cell_28/bias/v#AdamW/lstm_29/lstm_cell_29/kernel/v-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/v!AdamW/lstm_29/lstm_cell_29/bias/v*>
Tin7
523*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_198150Ϊά"
ΛA
Κ

lstm_28_while_body_195559,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3+
'lstm_28_while_lstm_28_strided_slice_1_0g
clstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0: O
=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0: J
<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0: 
lstm_28_while_identity
lstm_28_while_identity_1
lstm_28_while_identity_2
lstm_28_while_identity_3
lstm_28_while_identity_4
lstm_28_while_identity_5)
%lstm_28_while_lstm_28_strided_slice_1e
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorK
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource: M
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource: H
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource: ’1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp’0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp’2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ξ
1lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0lstm_28_while_placeholderHlstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0¬
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ρ
!lstm_28/while/lstm_cell_28/MatMulMatMul8lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? °
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Έ
#lstm_28/while/lstm_cell_28/MatMul_1MatMullstm_28_while_placeholder_2:lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ΅
lstm_28/while/lstm_cell_28/addAddV2+lstm_28/while/lstm_cell_28/MatMul:product:0-lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? ͺ
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ύ
"lstm_28/while/lstm_cell_28/BiasAddBiasAdd"lstm_28/while/lstm_cell_28/add:z:09lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? l
*lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_28/while/lstm_cell_28/splitSplit3lstm_28/while/lstm_cell_28/split/split_dim:output:0+lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
"lstm_28/while/lstm_cell_28/SigmoidSigmoid)lstm_28/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????
$lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid)lstm_28/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
lstm_28/while/lstm_cell_28/mulMul(lstm_28/while/lstm_cell_28/Sigmoid_1:y:0lstm_28_while_placeholder_3*
T0*'
_output_shapes
:?????????
lstm_28/while/lstm_cell_28/ReluRelu)lstm_28/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????°
 lstm_28/while/lstm_cell_28/mul_1Mul&lstm_28/while/lstm_cell_28/Sigmoid:y:0-lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????₯
 lstm_28/while/lstm_cell_28/add_1AddV2"lstm_28/while/lstm_cell_28/mul:z:0$lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????
$lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid)lstm_28/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????
!lstm_28/while/lstm_cell_28/Relu_1Relu$lstm_28/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????΄
 lstm_28/while/lstm_cell_28/mul_2Mul(lstm_28/while/lstm_cell_28/Sigmoid_2:y:0/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????ε
2lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_28_while_placeholder_1lstm_28_while_placeholder$lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?U
lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_28/while/addAddV2lstm_28_while_placeholderlstm_28/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_28/while/add_1AddV2(lstm_28_while_lstm_28_while_loop_counterlstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_28/while/IdentityIdentitylstm_28/while/add_1:z:0^lstm_28/while/NoOp*
T0*
_output_shapes
: 
lstm_28/while/Identity_1Identity.lstm_28_while_lstm_28_while_maximum_iterations^lstm_28/while/NoOp*
T0*
_output_shapes
: q
lstm_28/while/Identity_2Identitylstm_28/while/add:z:0^lstm_28/while/NoOp*
T0*
_output_shapes
: ±
lstm_28/while/Identity_3IdentityBlstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_28/while/NoOp*
T0*
_output_shapes
: :ιθ?
lstm_28/while/Identity_4Identity$lstm_28/while/lstm_cell_28/mul_2:z:0^lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????
lstm_28/while/Identity_5Identity$lstm_28/while/lstm_cell_28/add_1:z:0^lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????π
lstm_28/while/NoOpNoOp2^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_28_while_identitylstm_28/while/Identity:output:0"=
lstm_28_while_identity_1!lstm_28/while/Identity_1:output:0"=
lstm_28_while_identity_2!lstm_28/while/Identity_2:output:0"=
lstm_28_while_identity_3!lstm_28/while/Identity_3:output:0"=
lstm_28_while_identity_4!lstm_28/while/Identity_4:output:0"=
lstm_28_while_identity_5!lstm_28/while/Identity_5:output:0"P
%lstm_28_while_lstm_28_strided_slice_1'lstm_28_while_lstm_28_strided_slice_1_0"z
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"|
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"x
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"Θ
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2d
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2h
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
8
Κ
while_body_194926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
8
Κ
while_body_197008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
Έ!
¦
I__inference_sequential_14_layer_call_and_return_conditional_losses_195418
lstm_28_input 
lstm_28_195380:  
lstm_28_195382: 
lstm_28_195384: +
batch_normalization_28_195387:+
batch_normalization_28_195389:+
batch_normalization_28_195391:+
batch_normalization_28_195393: 
lstm_29_195396:  
lstm_29_195398: 
lstm_29_195400: +
batch_normalization_29_195403:+
batch_normalization_29_195405:+
batch_normalization_29_195407:+
batch_normalization_29_195409:!
dense_14_195412:
dense_14_195414:
identity’.batch_normalization_28/StatefulPartitionedCall’.batch_normalization_29/StatefulPartitionedCall’ dense_14/StatefulPartitionedCall’lstm_28/StatefulPartitionedCall’lstm_29/StatefulPartitionedCall
lstm_28/StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputlstm_28_195380lstm_28_195382lstm_28_195384*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_195175
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0batch_normalization_28_195387batch_normalization_28_195389batch_normalization_28_195391batch_normalization_28_195393*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_194023―
lstm_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0lstm_29_195396lstm_29_195398lstm_29_195400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_195010
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_29/StatefulPartitionedCall:output:0batch_normalization_29_195403batch_normalization_29_195405batch_normalization_29_195407batch_normalization_29_195409*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194455‘
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0dense_14_195412dense_14_195414*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_194802x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall ^lstm_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall2B
lstm_29/StatefulPartitionedCalllstm_29/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input

΄
(__inference_lstm_29_layer_call_fn_196916
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallη
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_194184o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
¨
?
7__inference_batch_normalization_29_layer_call_fn_197547

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ή
?
7__inference_batch_normalization_28_layer_call_fn_196838

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_193976|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ΛA
Κ

lstm_29_while_body_196049,
(lstm_29_while_lstm_29_while_loop_counter2
.lstm_29_while_lstm_29_while_maximum_iterations
lstm_29_while_placeholder
lstm_29_while_placeholder_1
lstm_29_while_placeholder_2
lstm_29_while_placeholder_3+
'lstm_29_while_lstm_29_strided_slice_1_0g
clstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0: O
=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0: J
<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0: 
lstm_29_while_identity
lstm_29_while_identity_1
lstm_29_while_identity_2
lstm_29_while_identity_3
lstm_29_while_identity_4
lstm_29_while_identity_5)
%lstm_29_while_lstm_29_strided_slice_1e
alstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensorK
9lstm_29_while_lstm_cell_29_matmul_readvariableop_resource: M
;lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource: H
:lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource: ’1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp’0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp’2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp
?lstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ξ
1lstm_29/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0lstm_29_while_placeholderHlstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0¬
0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ρ
!lstm_29/while/lstm_cell_29/MatMulMatMul8lstm_29/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? °
2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Έ
#lstm_29/while/lstm_cell_29/MatMul_1MatMullstm_29_while_placeholder_2:lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ΅
lstm_29/while/lstm_cell_29/addAddV2+lstm_29/while/lstm_cell_29/MatMul:product:0-lstm_29/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? ͺ
1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ύ
"lstm_29/while/lstm_cell_29/BiasAddBiasAdd"lstm_29/while/lstm_cell_29/add:z:09lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? l
*lstm_29/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_29/while/lstm_cell_29/splitSplit3lstm_29/while/lstm_cell_29/split/split_dim:output:0+lstm_29/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
"lstm_29/while/lstm_cell_29/SigmoidSigmoid)lstm_29/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????
$lstm_29/while/lstm_cell_29/Sigmoid_1Sigmoid)lstm_29/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
lstm_29/while/lstm_cell_29/mulMul(lstm_29/while/lstm_cell_29/Sigmoid_1:y:0lstm_29_while_placeholder_3*
T0*'
_output_shapes
:?????????
lstm_29/while/lstm_cell_29/ReluRelu)lstm_29/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????°
 lstm_29/while/lstm_cell_29/mul_1Mul&lstm_29/while/lstm_cell_29/Sigmoid:y:0-lstm_29/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????₯
 lstm_29/while/lstm_cell_29/add_1AddV2"lstm_29/while/lstm_cell_29/mul:z:0$lstm_29/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????
$lstm_29/while/lstm_cell_29/Sigmoid_2Sigmoid)lstm_29/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????
!lstm_29/while/lstm_cell_29/Relu_1Relu$lstm_29/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????΄
 lstm_29/while/lstm_cell_29/mul_2Mul(lstm_29/while/lstm_cell_29/Sigmoid_2:y:0/lstm_29/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????ε
2lstm_29/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_29_while_placeholder_1lstm_29_while_placeholder$lstm_29/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?U
lstm_29/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_29/while/addAddV2lstm_29_while_placeholderlstm_29/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_29/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_29/while/add_1AddV2(lstm_29_while_lstm_29_while_loop_counterlstm_29/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_29/while/IdentityIdentitylstm_29/while/add_1:z:0^lstm_29/while/NoOp*
T0*
_output_shapes
: 
lstm_29/while/Identity_1Identity.lstm_29_while_lstm_29_while_maximum_iterations^lstm_29/while/NoOp*
T0*
_output_shapes
: q
lstm_29/while/Identity_2Identitylstm_29/while/add:z:0^lstm_29/while/NoOp*
T0*
_output_shapes
: ±
lstm_29/while/Identity_3IdentityBlstm_29/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_29/while/NoOp*
T0*
_output_shapes
: :ιθ?
lstm_29/while/Identity_4Identity$lstm_29/while/lstm_cell_29/mul_2:z:0^lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????
lstm_29/while/Identity_5Identity$lstm_29/while/lstm_cell_29/add_1:z:0^lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????π
lstm_29/while/NoOpNoOp2^lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp1^lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp3^lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_29_while_identitylstm_29/while/Identity:output:0"=
lstm_29_while_identity_1!lstm_29/while/Identity_1:output:0"=
lstm_29_while_identity_2!lstm_29/while/Identity_2:output:0"=
lstm_29_while_identity_3!lstm_29/while/Identity_3:output:0"=
lstm_29_while_identity_4!lstm_29/while/Identity_4:output:0"=
lstm_29_while_identity_5!lstm_29/while/Identity_5:output:0"P
%lstm_29_while_lstm_29_strided_slice_1'lstm_29_while_lstm_29_strided_slice_1_0"z
:lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0"|
;lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0"x
9lstm_29_while_lstm_cell_29_matmul_readvariableop_resource;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0"Θ
alstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensorclstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp2d
0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp2h
2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 

ϋ
'sequential_14_lstm_28_while_cond_193339H
Dsequential_14_lstm_28_while_sequential_14_lstm_28_while_loop_counterN
Jsequential_14_lstm_28_while_sequential_14_lstm_28_while_maximum_iterations+
'sequential_14_lstm_28_while_placeholder-
)sequential_14_lstm_28_while_placeholder_1-
)sequential_14_lstm_28_while_placeholder_2-
)sequential_14_lstm_28_while_placeholder_3J
Fsequential_14_lstm_28_while_less_sequential_14_lstm_28_strided_slice_1`
\sequential_14_lstm_28_while_sequential_14_lstm_28_while_cond_193339___redundant_placeholder0`
\sequential_14_lstm_28_while_sequential_14_lstm_28_while_cond_193339___redundant_placeholder1`
\sequential_14_lstm_28_while_sequential_14_lstm_28_while_cond_193339___redundant_placeholder2`
\sequential_14_lstm_28_while_sequential_14_lstm_28_while_cond_193339___redundant_placeholder3(
$sequential_14_lstm_28_while_identity
Ί
 sequential_14/lstm_28/while/LessLess'sequential_14_lstm_28_while_placeholderFsequential_14_lstm_28_while_less_sequential_14_lstm_28_strided_slice_1*
T0*
_output_shapes
: w
$sequential_14/lstm_28/while/IdentityIdentity$sequential_14/lstm_28/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_14_lstm_28_while_identity-sequential_14/lstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
΅
Γ
while_cond_193873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193873___redundant_placeholder04
0while_while_cond_193873___redundant_placeholder14
0while_while_cond_193873___redundant_placeholder24
0while_while_cond_193873___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
8
Κ
while_body_194531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
΅
Γ
while_cond_195090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_195090___redundant_placeholder04
0while_while_cond_195090___redundant_placeholder14
0while_while_cond_195090___redundant_placeholder24
0while_while_cond_195090___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
σ"
έ
while_body_194306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_29_194330_0: -
while_lstm_cell_29_194332_0: )
while_lstm_cell_29_194334_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_29_194330: +
while_lstm_cell_29_194332: '
while_lstm_cell_29_194334: ’*while/lstm_cell_29/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0³
*while/lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_29_194330_0while_lstm_cell_29_194332_0while_lstm_cell_29_194334_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194247ά
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_29/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity3while/lstm_cell_29/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
while/Identity_5Identity3while/lstm_cell_29/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????y

while/NoOpNoOp+^while/lstm_cell_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_29_194330while_lstm_cell_29_194330_0"8
while_lstm_cell_29_194332while_lstm_cell_29_194332_0"8
while_lstm_cell_29_194334while_lstm_cell_29_194334_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_29/StatefulPartitionedCall*while/lstm_cell_29/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
΅
Γ
while_cond_196597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_196597___redundant_placeholder04
0while_while_cond_196597___redundant_placeholder14
0while_while_cond_196597___redundant_placeholder24
0while_while_cond_196597___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:


υ
D__inference_dense_14_layer_call_and_return_conditional_losses_194802

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
R

'sequential_14_lstm_29_while_body_193495H
Dsequential_14_lstm_29_while_sequential_14_lstm_29_while_loop_counterN
Jsequential_14_lstm_29_while_sequential_14_lstm_29_while_maximum_iterations+
'sequential_14_lstm_29_while_placeholder-
)sequential_14_lstm_29_while_placeholder_1-
)sequential_14_lstm_29_while_placeholder_2-
)sequential_14_lstm_29_while_placeholder_3G
Csequential_14_lstm_29_while_sequential_14_lstm_29_strided_slice_1_0
sequential_14_lstm_29_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_29_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_14_lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0: ]
Ksequential_14_lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0: X
Jsequential_14_lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0: (
$sequential_14_lstm_29_while_identity*
&sequential_14_lstm_29_while_identity_1*
&sequential_14_lstm_29_while_identity_2*
&sequential_14_lstm_29_while_identity_3*
&sequential_14_lstm_29_while_identity_4*
&sequential_14_lstm_29_while_identity_5E
Asequential_14_lstm_29_while_sequential_14_lstm_29_strided_slice_1
}sequential_14_lstm_29_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_29_tensorarrayunstack_tensorlistfromtensorY
Gsequential_14_lstm_29_while_lstm_cell_29_matmul_readvariableop_resource: [
Isequential_14_lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource: V
Hsequential_14_lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource: ’?sequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp’>sequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp’@sequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp
Msequential_14/lstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?sequential_14/lstm_29/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_14_lstm_29_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_29_tensorarrayunstack_tensorlistfromtensor_0'sequential_14_lstm_29_while_placeholderVsequential_14/lstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0Θ
>sequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOpIsequential_14_lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ϋ
/sequential_14/lstm_29/while/lstm_cell_29/MatMulMatMulFsequential_14/lstm_29/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Μ
@sequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOpKsequential_14_lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0β
1sequential_14/lstm_29/while/lstm_cell_29/MatMul_1MatMul)sequential_14_lstm_29_while_placeholder_2Hsequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ί
,sequential_14/lstm_29/while/lstm_cell_29/addAddV29sequential_14/lstm_29/while/lstm_cell_29/MatMul:product:0;sequential_14/lstm_29/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? Ζ
?sequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOpJsequential_14_lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0θ
0sequential_14/lstm_29/while/lstm_cell_29/BiasAddBiasAdd0sequential_14/lstm_29/while/lstm_cell_29/add:z:0Gsequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? z
8sequential_14/lstm_29/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_14/lstm_29/while/lstm_cell_29/splitSplitAsequential_14/lstm_29/while/lstm_cell_29/split/split_dim:output:09sequential_14/lstm_29/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split¦
0sequential_14/lstm_29/while/lstm_cell_29/SigmoidSigmoid7sequential_14/lstm_29/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????¨
2sequential_14/lstm_29/while/lstm_cell_29/Sigmoid_1Sigmoid7sequential_14/lstm_29/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????Θ
,sequential_14/lstm_29/while/lstm_cell_29/mulMul6sequential_14/lstm_29/while/lstm_cell_29/Sigmoid_1:y:0)sequential_14_lstm_29_while_placeholder_3*
T0*'
_output_shapes
:????????? 
-sequential_14/lstm_29/while/lstm_cell_29/ReluRelu7sequential_14/lstm_29/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????Ϊ
.sequential_14/lstm_29/while/lstm_cell_29/mul_1Mul4sequential_14/lstm_29/while/lstm_cell_29/Sigmoid:y:0;sequential_14/lstm_29/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????Ο
.sequential_14/lstm_29/while/lstm_cell_29/add_1AddV20sequential_14/lstm_29/while/lstm_cell_29/mul:z:02sequential_14/lstm_29/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????¨
2sequential_14/lstm_29/while/lstm_cell_29/Sigmoid_2Sigmoid7sequential_14/lstm_29/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????
/sequential_14/lstm_29/while/lstm_cell_29/Relu_1Relu2sequential_14/lstm_29/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????ή
.sequential_14/lstm_29/while/lstm_cell_29/mul_2Mul6sequential_14/lstm_29/while/lstm_cell_29/Sigmoid_2:y:0=sequential_14/lstm_29/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
@sequential_14/lstm_29/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_14_lstm_29_while_placeholder_1'sequential_14_lstm_29_while_placeholder2sequential_14/lstm_29/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?c
!sequential_14/lstm_29/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_14/lstm_29/while/addAddV2'sequential_14_lstm_29_while_placeholder*sequential_14/lstm_29/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_14/lstm_29/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ώ
!sequential_14/lstm_29/while/add_1AddV2Dsequential_14_lstm_29_while_sequential_14_lstm_29_while_loop_counter,sequential_14/lstm_29/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_14/lstm_29/while/IdentityIdentity%sequential_14/lstm_29/while/add_1:z:0!^sequential_14/lstm_29/while/NoOp*
T0*
_output_shapes
: Β
&sequential_14/lstm_29/while/Identity_1IdentityJsequential_14_lstm_29_while_sequential_14_lstm_29_while_maximum_iterations!^sequential_14/lstm_29/while/NoOp*
T0*
_output_shapes
: 
&sequential_14/lstm_29/while/Identity_2Identity#sequential_14/lstm_29/while/add:z:0!^sequential_14/lstm_29/while/NoOp*
T0*
_output_shapes
: Ϋ
&sequential_14/lstm_29/while/Identity_3IdentityPsequential_14/lstm_29/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_14/lstm_29/while/NoOp*
T0*
_output_shapes
: :ιθ?»
&sequential_14/lstm_29/while/Identity_4Identity2sequential_14/lstm_29/while/lstm_cell_29/mul_2:z:0!^sequential_14/lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????»
&sequential_14/lstm_29/while/Identity_5Identity2sequential_14/lstm_29/while/lstm_cell_29/add_1:z:0!^sequential_14/lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????¨
 sequential_14/lstm_29/while/NoOpNoOp@^sequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp?^sequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOpA^sequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_14_lstm_29_while_identity-sequential_14/lstm_29/while/Identity:output:0"Y
&sequential_14_lstm_29_while_identity_1/sequential_14/lstm_29/while/Identity_1:output:0"Y
&sequential_14_lstm_29_while_identity_2/sequential_14/lstm_29/while/Identity_2:output:0"Y
&sequential_14_lstm_29_while_identity_3/sequential_14/lstm_29/while/Identity_3:output:0"Y
&sequential_14_lstm_29_while_identity_4/sequential_14/lstm_29/while/Identity_4:output:0"Y
&sequential_14_lstm_29_while_identity_5/sequential_14/lstm_29/while/Identity_5:output:0"
Hsequential_14_lstm_29_while_lstm_cell_29_biasadd_readvariableop_resourceJsequential_14_lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0"
Isequential_14_lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resourceKsequential_14_lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0"
Gsequential_14_lstm_29_while_lstm_cell_29_matmul_readvariableop_resourceIsequential_14_lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0"
Asequential_14_lstm_29_while_sequential_14_lstm_29_strided_slice_1Csequential_14_lstm_29_while_sequential_14_lstm_29_strided_slice_1_0"
}sequential_14_lstm_29_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_29_tensorarrayunstack_tensorlistfromtensorsequential_14_lstm_29_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_29_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2
?sequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp?sequential_14/lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp2
>sequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp>sequential_14/lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp2
@sequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp@sequential_14/lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 


υ
D__inference_dense_14_layer_call_and_return_conditional_losses_197621

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
΅
Γ
while_cond_194689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194689___redundant_placeholder04
0while_while_cond_194689___redundant_placeholder14
0while_while_cond_194689___redundant_placeholder24
0while_while_cond_194689___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_28_layer_call_and_return_conditional_losses_195175

inputs=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_195091*
condR
while_cond_195090*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
8
Κ
while_body_196598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
ό
²
(__inference_lstm_28_layer_call_fn_196253

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallι
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_195175s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΧJ

C__inference_lstm_28_layer_call_and_return_conditional_losses_196396
inputs_0=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_196312*
condR
while_cond_196311*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
¦
΄
(__inference_lstm_28_layer_call_fn_196220
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_193752|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
¦
΄
(__inference_lstm_28_layer_call_fn_196231
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallτ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_193943|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
J

C__inference_lstm_29_layer_call_and_return_conditional_losses_197378

inputs=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_197294*
condR
while_cond_197293*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193815

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
΅
Γ
while_cond_194530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194530___redundant_placeholder04
0while_while_cond_194530___redundant_placeholder14
0while_while_cond_194530___redundant_placeholder24
0while_while_cond_194530___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
ΣJ

C__inference_lstm_29_layer_call_and_return_conditional_losses_197092
inputs_0=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_197008*
condR
while_cond_197007*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
΅
Γ
while_cond_196311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_196311___redundant_placeholder04
0while_while_cond_196311___redundant_placeholder14
0while_while_cond_196311___redundant_placeholder24
0while_while_cond_196311___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
΅
Γ
while_cond_197150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_197150___redundant_placeholder04
0while_while_cond_197150___redundant_placeholder14
0while_while_cond_197150___redundant_placeholder24
0while_while_cond_197150___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
£!

I__inference_sequential_14_layer_call_and_return_conditional_losses_195264

inputs 
lstm_28_195226:  
lstm_28_195228: 
lstm_28_195230: +
batch_normalization_28_195233:+
batch_normalization_28_195235:+
batch_normalization_28_195237:+
batch_normalization_28_195239: 
lstm_29_195242:  
lstm_29_195244: 
lstm_29_195246: +
batch_normalization_29_195249:+
batch_normalization_29_195251:+
batch_normalization_29_195253:+
batch_normalization_29_195255:!
dense_14_195258:
dense_14_195260:
identity’.batch_normalization_28/StatefulPartitionedCall’.batch_normalization_29/StatefulPartitionedCall’ dense_14/StatefulPartitionedCall’lstm_28/StatefulPartitionedCall’lstm_29/StatefulPartitionedCall
lstm_28/StatefulPartitionedCallStatefulPartitionedCallinputslstm_28_195226lstm_28_195228lstm_28_195230*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_195175
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0batch_normalization_28_195233batch_normalization_28_195235batch_normalization_28_195237batch_normalization_28_195239*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_194023―
lstm_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0lstm_29_195242lstm_29_195244lstm_29_195246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_195010
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_29/StatefulPartitionedCall:output:0batch_normalization_29_195249batch_normalization_29_195251batch_normalization_29_195253batch_normalization_29_195255*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194455‘
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0dense_14_195258dense_14_195260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_194802x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall ^lstm_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall2B
lstm_29/StatefulPartitionedCalllstm_29/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Σ

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197785

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
θ
σ
-__inference_lstm_cell_29_layer_call_fn_197753

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2’StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194247o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1

±
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196871

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
8
Κ
while_body_196455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 


.__inference_sequential_14_layer_call_fn_195463

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_194809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ώ%
λ
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196905

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Ο
±
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194408

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ψ
Ί
I__inference_sequential_14_layer_call_and_return_conditional_losses_196170

inputsE
3lstm_28_lstm_cell_28_matmul_readvariableop_resource: G
5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource: B
4lstm_28_lstm_cell_28_biasadd_readvariableop_resource: L
>batch_normalization_28_assignmovingavg_readvariableop_resource:N
@batch_normalization_28_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_28_batchnorm_mul_readvariableop_resource:F
8batch_normalization_28_batchnorm_readvariableop_resource:E
3lstm_29_lstm_cell_29_matmul_readvariableop_resource: G
5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource: B
4lstm_29_lstm_cell_29_biasadd_readvariableop_resource: L
>batch_normalization_29_assignmovingavg_readvariableop_resource:N
@batch_normalization_29_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_29_batchnorm_mul_readvariableop_resource:F
8batch_normalization_29_batchnorm_readvariableop_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identity’&batch_normalization_28/AssignMovingAvg’5batch_normalization_28/AssignMovingAvg/ReadVariableOp’(batch_normalization_28/AssignMovingAvg_1’7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp’/batch_normalization_28/batchnorm/ReadVariableOp’3batch_normalization_28/batchnorm/mul/ReadVariableOp’&batch_normalization_29/AssignMovingAvg’5batch_normalization_29/AssignMovingAvg/ReadVariableOp’(batch_normalization_29/AssignMovingAvg_1’7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp’/batch_normalization_29/batchnorm/ReadVariableOp’3batch_normalization_29/batchnorm/mul/ReadVariableOp’dense_14/BiasAdd/ReadVariableOp’dense_14/MatMul/ReadVariableOp’+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp’*lstm_28/lstm_cell_28/MatMul/ReadVariableOp’,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp’lstm_28/while’+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp’*lstm_29/lstm_cell_29/MatMul/ReadVariableOp’,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp’lstm_29/whileC
lstm_28/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
lstm_28/strided_sliceStridedSlicelstm_28/Shape:output:0$lstm_28/strided_slice/stack:output:0&lstm_28/strided_slice/stack_1:output:0&lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_28/zeros/packedPacklstm_28/strided_slice:output:0lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_28/zerosFilllstm_28/zeros/packed:output:0lstm_28/zeros/Const:output:0*
T0*'
_output_shapes
:?????????Z
lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_28/zeros_1/packedPacklstm_28/strided_slice:output:0!lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_28/zeros_1Filllstm_28/zeros_1/packed:output:0lstm_28/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????k
lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_28/transpose	Transposeinputslstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_28/Shape_1Shapelstm_28/transpose:y:0*
T0*
_output_shapes
:g
lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_28/strided_slice_1StridedSlicelstm_28/Shape_1:output:0&lstm_28/strided_slice_1/stack:output:0(lstm_28/strided_slice_1/stack_1:output:0(lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Μ
lstm_28/TensorArrayV2TensorListReserve,lstm_28/TensorArrayV2/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ψ
/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_28/transpose:y:0Flstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?g
lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_28/strided_slice_2StridedSlicelstm_28/transpose:y:0&lstm_28/strided_slice_2/stack:output:0(lstm_28/strided_slice_2/stack_1:output:0(lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0­
lstm_28/lstm_cell_28/MatMulMatMul lstm_28/strided_slice_2:output:02lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ’
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0§
lstm_28/lstm_cell_28/MatMul_1MatMullstm_28/zeros:output:04lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? £
lstm_28/lstm_cell_28/addAddV2%lstm_28/lstm_cell_28/MatMul:product:0'lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
lstm_28/lstm_cell_28/BiasAddBiasAddlstm_28/lstm_cell_28/add:z:03lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? f
$lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :υ
lstm_28/lstm_cell_28/splitSplit-lstm_28/lstm_cell_28/split/split_dim:output:0%lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split~
lstm_28/lstm_cell_28/SigmoidSigmoid#lstm_28/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/Sigmoid_1Sigmoid#lstm_28/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/mulMul"lstm_28/lstm_cell_28/Sigmoid_1:y:0lstm_28/zeros_1:output:0*
T0*'
_output_shapes
:?????????x
lstm_28/lstm_cell_28/ReluRelu#lstm_28/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/mul_1Mul lstm_28/lstm_cell_28/Sigmoid:y:0'lstm_28/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/add_1AddV2lstm_28/lstm_cell_28/mul:z:0lstm_28/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/Sigmoid_2Sigmoid#lstm_28/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????u
lstm_28/lstm_cell_28/Relu_1Relulstm_28/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????’
lstm_28/lstm_cell_28/mul_2Mul"lstm_28/lstm_cell_28/Sigmoid_2:y:0)lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????v
%lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Π
lstm_28/TensorArrayV2_1TensorListReserve.lstm_28/TensorArrayV2_1/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?N
lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ς
lstm_28/whileWhile#lstm_28/while/loop_counter:output:0)lstm_28/while/maximum_iterations:output:0lstm_28/time:output:0 lstm_28/TensorArrayV2_1:handle:0lstm_28/zeros:output:0lstm_28/zeros_1:output:0 lstm_28/strided_slice_1:output:0?lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_28_lstm_cell_28_matmul_readvariableop_resource5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_28_while_body_195880*%
condR
lstm_28_while_cond_195879*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ϊ
*lstm_28/TensorArrayV2Stack/TensorListStackTensorListStacklstm_28/while:output:3Alstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0p
lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:―
lstm_28/strided_slice_3StridedSlice3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_28/strided_slice_3/stack:output:0(lstm_28/strided_slice_3/stack_1:output:0(lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskm
lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_28/transpose_1	Transpose3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????c
lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
5batch_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Β
#batch_normalization_28/moments/meanMeanlstm_28/transpose_1:y:0>batch_normalization_28/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_28/moments/StopGradientStopGradient,batch_normalization_28/moments/mean:output:0*
T0*"
_output_shapes
:Κ
0batch_normalization_28/moments/SquaredDifferenceSquaredDifferencelstm_28/transpose_1:y:04batch_normalization_28/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????
9batch_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       η
'batch_normalization_28/moments/varianceMean4batch_normalization_28/moments/SquaredDifference:z:0Bbatch_normalization_28/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_28/moments/SqueezeSqueeze,batch_normalization_28/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ’
(batch_normalization_28/moments/Squeeze_1Squeeze0batch_normalization_28/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_28/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?°
5batch_normalization_28/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_28_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ζ
*batch_normalization_28/AssignMovingAvg/subSub=batch_normalization_28/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_28/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_28/AssignMovingAvg/mulMul.batch_normalization_28/AssignMovingAvg/sub:z:05batch_normalization_28/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_28/AssignMovingAvgAssignSubVariableOp>batch_normalization_28_assignmovingavg_readvariableop_resource.batch_normalization_28/AssignMovingAvg/mul:z:06^batch_normalization_28/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_28/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?΄
7batch_normalization_28/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_28_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Μ
,batch_normalization_28/AssignMovingAvg_1/subSub?batch_normalization_28/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_28/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Γ
,batch_normalization_28/AssignMovingAvg_1/mulMul0batch_normalization_28/AssignMovingAvg_1/sub:z:07batch_normalization_28/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_28/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_28_assignmovingavg_1_readvariableop_resource0batch_normalization_28/AssignMovingAvg_1/mul:z:08^batch_normalization_28/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ά
$batch_normalization_28/batchnorm/addAddV21batch_normalization_28/moments/Squeeze_1:output:0/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_28/batchnorm/RsqrtRsqrt(batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_28/batchnorm/mulMul*batch_normalization_28/batchnorm/Rsqrt:y:0;batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:¦
&batch_normalization_28/batchnorm/mul_1Mullstm_28/transpose_1:y:0(batch_normalization_28/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????­
&batch_normalization_28/batchnorm/mul_2Mul/batch_normalization_28/moments/Squeeze:output:0(batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:€
/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0΅
$batch_normalization_28/batchnorm/subSub7batch_normalization_28/batchnorm/ReadVariableOp:value:0*batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:»
&batch_normalization_28/batchnorm/add_1AddV2*batch_normalization_28/batchnorm/mul_1:z:0(batch_normalization_28/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????g
lstm_29/ShapeShape*batch_normalization_28/batchnorm/add_1:z:0*
T0*
_output_shapes
:e
lstm_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
lstm_29/strided_sliceStridedSlicelstm_29/Shape:output:0$lstm_29/strided_slice/stack:output:0&lstm_29/strided_slice/stack_1:output:0&lstm_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_29/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_29/zeros/packedPacklstm_29/strided_slice:output:0lstm_29/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_29/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_29/zerosFilllstm_29/zeros/packed:output:0lstm_29/zeros/Const:output:0*
T0*'
_output_shapes
:?????????Z
lstm_29/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_29/zeros_1/packedPacklstm_29/strided_slice:output:0!lstm_29/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_29/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_29/zeros_1Filllstm_29/zeros_1/packed:output:0lstm_29/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????k
lstm_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ‘
lstm_29/transpose	Transpose*batch_normalization_28/batchnorm/add_1:z:0lstm_29/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_29/Shape_1Shapelstm_29/transpose:y:0*
T0*
_output_shapes
:g
lstm_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_29/strided_slice_1StridedSlicelstm_29/Shape_1:output:0&lstm_29/strided_slice_1/stack:output:0(lstm_29/strided_slice_1/stack_1:output:0(lstm_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_29/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Μ
lstm_29/TensorArrayV2TensorListReserve,lstm_29/TensorArrayV2/element_shape:output:0 lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
=lstm_29/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ψ
/lstm_29/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_29/transpose:y:0Flstm_29/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?g
lstm_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_29/strided_slice_2StridedSlicelstm_29/transpose:y:0&lstm_29/strided_slice_2/stack:output:0(lstm_29/strided_slice_2/stack_1:output:0(lstm_29/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
*lstm_29/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3lstm_29_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0­
lstm_29/lstm_cell_29/MatMulMatMul lstm_29/strided_slice_2:output:02lstm_29/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ’
,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0§
lstm_29/lstm_cell_29/MatMul_1MatMullstm_29/zeros:output:04lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? £
lstm_29/lstm_cell_29/addAddV2%lstm_29/lstm_cell_29/MatMul:product:0'lstm_29/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
lstm_29/lstm_cell_29/BiasAddBiasAddlstm_29/lstm_cell_29/add:z:03lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? f
$lstm_29/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :υ
lstm_29/lstm_cell_29/splitSplit-lstm_29/lstm_cell_29/split/split_dim:output:0%lstm_29/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split~
lstm_29/lstm_cell_29/SigmoidSigmoid#lstm_29/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/Sigmoid_1Sigmoid#lstm_29/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/mulMul"lstm_29/lstm_cell_29/Sigmoid_1:y:0lstm_29/zeros_1:output:0*
T0*'
_output_shapes
:?????????x
lstm_29/lstm_cell_29/ReluRelu#lstm_29/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/mul_1Mul lstm_29/lstm_cell_29/Sigmoid:y:0'lstm_29/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/add_1AddV2lstm_29/lstm_cell_29/mul:z:0lstm_29/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/Sigmoid_2Sigmoid#lstm_29/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????u
lstm_29/lstm_cell_29/Relu_1Relulstm_29/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????’
lstm_29/lstm_cell_29/mul_2Mul"lstm_29/lstm_cell_29/Sigmoid_2:y:0)lstm_29/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????v
%lstm_29/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Π
lstm_29/TensorArrayV2_1TensorListReserve.lstm_29/TensorArrayV2_1/element_shape:output:0 lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?N
lstm_29/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_29/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_29/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ς
lstm_29/whileWhile#lstm_29/while/loop_counter:output:0)lstm_29/while/maximum_iterations:output:0lstm_29/time:output:0 lstm_29/TensorArrayV2_1:handle:0lstm_29/zeros:output:0lstm_29/zeros_1:output:0 lstm_29/strided_slice_1:output:0?lstm_29/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_29_lstm_cell_29_matmul_readvariableop_resource5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource4lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_29_while_body_196049*%
condR
lstm_29_while_cond_196048*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
8lstm_29/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ϊ
*lstm_29/TensorArrayV2Stack/TensorListStackTensorListStacklstm_29/while:output:3Alstm_29/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0p
lstm_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:―
lstm_29/strided_slice_3StridedSlice3lstm_29/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_29/strided_slice_3/stack:output:0(lstm_29/strided_slice_3/stack_1:output:0(lstm_29/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskm
lstm_29/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_29/transpose_1	Transpose3lstm_29/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_29/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????c
lstm_29/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
5batch_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Η
#batch_normalization_29/moments/meanMean lstm_29/strided_slice_3:output:0>batch_normalization_29/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
+batch_normalization_29/moments/StopGradientStopGradient,batch_normalization_29/moments/mean:output:0*
T0*
_output_shapes

:Ο
0batch_normalization_29/moments/SquaredDifferenceSquaredDifference lstm_29/strided_slice_3:output:04batch_normalization_29/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????
9batch_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: γ
'batch_normalization_29/moments/varianceMean4batch_normalization_29/moments/SquaredDifference:z:0Bbatch_normalization_29/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
&batch_normalization_29/moments/SqueezeSqueeze,batch_normalization_29/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ‘
(batch_normalization_29/moments/Squeeze_1Squeeze0batch_normalization_29/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_29/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?°
5batch_normalization_29/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_29_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ζ
*batch_normalization_29/AssignMovingAvg/subSub=batch_normalization_29/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_29/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_29/AssignMovingAvg/mulMul.batch_normalization_29/AssignMovingAvg/sub:z:05batch_normalization_29/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_29/AssignMovingAvgAssignSubVariableOp>batch_normalization_29_assignmovingavg_readvariableop_resource.batch_normalization_29/AssignMovingAvg/mul:z:06^batch_normalization_29/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_29/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?΄
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_29_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Μ
,batch_normalization_29/AssignMovingAvg_1/subSub?batch_normalization_29/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_29/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Γ
,batch_normalization_29/AssignMovingAvg_1/mulMul0batch_normalization_29/AssignMovingAvg_1/sub:z:07batch_normalization_29/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_29/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_29_assignmovingavg_1_readvariableop_resource0batch_normalization_29/AssignMovingAvg_1/mul:z:08^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ά
$batch_normalization_29/batchnorm/addAddV21batch_normalization_29/moments/Squeeze_1:output:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:«
&batch_normalization_29/batchnorm/mul_1Mul lstm_29/strided_slice_3:output:0(batch_normalization_29/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????­
&batch_normalization_29/batchnorm/mul_2Mul/batch_normalization_29/moments/Squeeze:output:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:€
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0΅
$batch_normalization_29/batchnorm/subSub7batch_normalization_29/batchnorm/ReadVariableOp:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_14/MatMulMatMul*batch_normalization_29/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp'^batch_normalization_28/AssignMovingAvg6^batch_normalization_28/AssignMovingAvg/ReadVariableOp)^batch_normalization_28/AssignMovingAvg_18^batch_normalization_28/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_28/batchnorm/ReadVariableOp4^batch_normalization_28/batchnorm/mul/ReadVariableOp'^batch_normalization_29/AssignMovingAvg6^batch_normalization_29/AssignMovingAvg/ReadVariableOp)^batch_normalization_29/AssignMovingAvg_18^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_29/batchnorm/ReadVariableOp4^batch_normalization_29/batchnorm/mul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp,^lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+^lstm_28/lstm_cell_28/MatMul/ReadVariableOp-^lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_28/while,^lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp+^lstm_29/lstm_cell_29/MatMul/ReadVariableOp-^lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp^lstm_29/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2P
&batch_normalization_28/AssignMovingAvg&batch_normalization_28/AssignMovingAvg2n
5batch_normalization_28/AssignMovingAvg/ReadVariableOp5batch_normalization_28/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_28/AssignMovingAvg_1(batch_normalization_28/AssignMovingAvg_12r
7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_28/batchnorm/ReadVariableOp/batch_normalization_28/batchnorm/ReadVariableOp2j
3batch_normalization_28/batchnorm/mul/ReadVariableOp3batch_normalization_28/batchnorm/mul/ReadVariableOp2P
&batch_normalization_29/AssignMovingAvg&batch_normalization_29/AssignMovingAvg2n
5batch_normalization_29/AssignMovingAvg/ReadVariableOp5batch_normalization_29/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_29/AssignMovingAvg_1(batch_normalization_29/AssignMovingAvg_12r
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2Z
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2X
*lstm_28/lstm_cell_28/MatMul/ReadVariableOp*lstm_28/lstm_cell_28/MatMul/ReadVariableOp2\
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2
lstm_28/whilelstm_28/while2Z
+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp2X
*lstm_29/lstm_cell_29/MatMul/ReadVariableOp*lstm_29/lstm_cell_29/MatMul/ReadVariableOp2\
,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp2
lstm_29/whilelstm_29/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
J

C__inference_lstm_29_layer_call_and_return_conditional_losses_197521

inputs=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_197437*
condR
while_cond_197436*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΧJ

C__inference_lstm_28_layer_call_and_return_conditional_losses_196539
inputs_0=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_196455*
condR
while_cond_196454*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0


γ
lstm_29_while_cond_196048,
(lstm_29_while_lstm_29_while_loop_counter2
.lstm_29_while_lstm_29_while_maximum_iterations
lstm_29_while_placeholder
lstm_29_while_placeholder_1
lstm_29_while_placeholder_2
lstm_29_while_placeholder_3.
*lstm_29_while_less_lstm_29_strided_slice_1D
@lstm_29_while_lstm_29_while_cond_196048___redundant_placeholder0D
@lstm_29_while_lstm_29_while_cond_196048___redundant_placeholder1D
@lstm_29_while_lstm_29_while_cond_196048___redundant_placeholder2D
@lstm_29_while_lstm_29_while_cond_196048___redundant_placeholder3
lstm_29_while_identity

lstm_29/while/LessLesslstm_29_while_placeholder*lstm_29_while_less_lstm_29_strided_slice_1*
T0*
_output_shapes
: [
lstm_29/while/IdentityIdentitylstm_29/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_29_while_identitylstm_29/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
ό
²
(__inference_lstm_28_layer_call_fn_196242

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallι
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_194615s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
J

C__inference_lstm_29_layer_call_and_return_conditional_losses_195010

inputs=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194926*
condR
while_cond_194925*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193669

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
Λ

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194101

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
―

.__inference_sequential_14_layer_call_fn_195336
lstm_28_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_195264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input


γ
lstm_28_while_cond_195879,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3.
*lstm_28_while_less_lstm_28_strided_slice_1D
@lstm_28_while_lstm_28_while_cond_195879___redundant_placeholder0D
@lstm_28_while_lstm_28_while_cond_195879___redundant_placeholder1D
@lstm_28_while_lstm_28_while_cond_195879___redundant_placeholder2D
@lstm_28_while_lstm_28_while_cond_195879___redundant_placeholder3
lstm_28_while_identity

lstm_28/while/LessLesslstm_28_while_placeholder*lstm_28_while_less_lstm_28_strided_slice_1*
T0*
_output_shapes
: [
lstm_28/while/IdentityIdentitylstm_28/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_28_while_identitylstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_29_layer_call_and_return_conditional_losses_194774

inputs=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194690*
condR
while_cond_194689*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΛA
Κ

lstm_28_while_body_195880,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3+
'lstm_28_while_lstm_28_strided_slice_1_0g
clstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0: O
=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0: J
<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0: 
lstm_28_while_identity
lstm_28_while_identity_1
lstm_28_while_identity_2
lstm_28_while_identity_3
lstm_28_while_identity_4
lstm_28_while_identity_5)
%lstm_28_while_lstm_28_strided_slice_1e
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorK
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource: M
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource: H
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource: ’1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp’0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp’2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ξ
1lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0lstm_28_while_placeholderHlstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0¬
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ρ
!lstm_28/while/lstm_cell_28/MatMulMatMul8lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? °
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Έ
#lstm_28/while/lstm_cell_28/MatMul_1MatMullstm_28_while_placeholder_2:lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ΅
lstm_28/while/lstm_cell_28/addAddV2+lstm_28/while/lstm_cell_28/MatMul:product:0-lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? ͺ
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ύ
"lstm_28/while/lstm_cell_28/BiasAddBiasAdd"lstm_28/while/lstm_cell_28/add:z:09lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? l
*lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_28/while/lstm_cell_28/splitSplit3lstm_28/while/lstm_cell_28/split/split_dim:output:0+lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
"lstm_28/while/lstm_cell_28/SigmoidSigmoid)lstm_28/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????
$lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid)lstm_28/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
lstm_28/while/lstm_cell_28/mulMul(lstm_28/while/lstm_cell_28/Sigmoid_1:y:0lstm_28_while_placeholder_3*
T0*'
_output_shapes
:?????????
lstm_28/while/lstm_cell_28/ReluRelu)lstm_28/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????°
 lstm_28/while/lstm_cell_28/mul_1Mul&lstm_28/while/lstm_cell_28/Sigmoid:y:0-lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????₯
 lstm_28/while/lstm_cell_28/add_1AddV2"lstm_28/while/lstm_cell_28/mul:z:0$lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????
$lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid)lstm_28/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????
!lstm_28/while/lstm_cell_28/Relu_1Relu$lstm_28/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????΄
 lstm_28/while/lstm_cell_28/mul_2Mul(lstm_28/while/lstm_cell_28/Sigmoid_2:y:0/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????ε
2lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_28_while_placeholder_1lstm_28_while_placeholder$lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?U
lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_28/while/addAddV2lstm_28_while_placeholderlstm_28/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_28/while/add_1AddV2(lstm_28_while_lstm_28_while_loop_counterlstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_28/while/IdentityIdentitylstm_28/while/add_1:z:0^lstm_28/while/NoOp*
T0*
_output_shapes
: 
lstm_28/while/Identity_1Identity.lstm_28_while_lstm_28_while_maximum_iterations^lstm_28/while/NoOp*
T0*
_output_shapes
: q
lstm_28/while/Identity_2Identitylstm_28/while/add:z:0^lstm_28/while/NoOp*
T0*
_output_shapes
: ±
lstm_28/while/Identity_3IdentityBlstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_28/while/NoOp*
T0*
_output_shapes
: :ιθ?
lstm_28/while/Identity_4Identity$lstm_28/while/lstm_cell_28/mul_2:z:0^lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????
lstm_28/while/Identity_5Identity$lstm_28/while/lstm_cell_28/add_1:z:0^lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????π
lstm_28/while/NoOpNoOp2^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_28_while_identitylstm_28/while/Identity:output:0"=
lstm_28_while_identity_1!lstm_28/while/Identity_1:output:0"=
lstm_28_while_identity_2!lstm_28/while/Identity_2:output:0"=
lstm_28_while_identity_3!lstm_28/while/Identity_3:output:0"=
lstm_28_while_identity_4!lstm_28/while/Identity_4:output:0"=
lstm_28_while_identity_5!lstm_28/while/Identity_5:output:0"P
%lstm_28_while_lstm_28_strided_slice_1'lstm_28_while_lstm_28_strided_slice_1_0"z
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"|
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"x
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"Θ
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2d
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2h
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
ά
?
7__inference_batch_normalization_28_layer_call_fn_196851

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_194023|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
8

C__inference_lstm_28_layer_call_and_return_conditional_losses_193943

inputs%
lstm_cell_28_193861: %
lstm_cell_28_193863: !
lstm_cell_28_193865: 
identity’$lstm_cell_28/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskυ
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_193861lstm_cell_28_193863lstm_cell_28_193865*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193815n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_193861lstm_cell_28_193863lstm_cell_28_193865*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193874*
condR
while_cond_193873*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????u
NoOpNoOp%^lstm_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
σ"
έ
while_body_193683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_28_193707_0: -
while_lstm_cell_28_193709_0: )
while_lstm_cell_28_193711_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_28_193707: +
while_lstm_cell_28_193709: '
while_lstm_cell_28_193711: ’*while/lstm_cell_28/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0³
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_193707_0while_lstm_cell_28_193709_0while_lstm_cell_28_193711_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193669ά
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????y

while/NoOpNoOp+^while/lstm_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_28_193707while_lstm_cell_28_193707_0"8
while_lstm_cell_28_193709while_lstm_cell_28_193709_0"8
while_lstm_cell_28_193711while_lstm_cell_28_193711_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
΅
Γ
while_cond_197293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_197293___redundant_placeholder04
0while_while_cond_197293___redundant_placeholder14
0while_while_cond_197293___redundant_placeholder24
0while_while_cond_197293___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
΅
Γ
while_cond_194925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194925___redundant_placeholder04
0while_while_cond_194925___redundant_placeholder14
0while_while_cond_194925___redundant_placeholder24
0while_while_cond_194925___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
Πh
Μ
__inference__traced_save_197990
file_prefix;
7savev2_batch_normalization_28_gamma_read_readvariableop:
6savev2_batch_normalization_28_beta_read_readvariableopA
=savev2_batch_normalization_28_moving_mean_read_readvariableopE
Asavev2_batch_normalization_28_moving_variance_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop)
%savev2_adamw_iter_read_readvariableop	+
'savev2_adamw_beta_1_read_readvariableop+
'savev2_adamw_beta_2_read_readvariableop*
&savev2_adamw_decay_read_readvariableop2
.savev2_adamw_learning_rate_read_readvariableop1
-savev2_adamw_weight_decay_read_readvariableop:
6savev2_lstm_28_lstm_cell_28_kernel_read_readvariableopD
@savev2_lstm_28_lstm_cell_28_recurrent_kernel_read_readvariableop8
4savev2_lstm_28_lstm_cell_28_bias_read_readvariableop:
6savev2_lstm_29_lstm_cell_29_kernel_read_readvariableopD
@savev2_lstm_29_lstm_cell_29_recurrent_kernel_read_readvariableop8
4savev2_lstm_29_lstm_cell_29_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adamw_batch_normalization_28_gamma_m_read_readvariableopB
>savev2_adamw_batch_normalization_28_beta_m_read_readvariableopC
?savev2_adamw_batch_normalization_29_gamma_m_read_readvariableopB
>savev2_adamw_batch_normalization_29_beta_m_read_readvariableop6
2savev2_adamw_dense_14_kernel_m_read_readvariableop4
0savev2_adamw_dense_14_bias_m_read_readvariableopB
>savev2_adamw_lstm_28_lstm_cell_28_kernel_m_read_readvariableopL
Hsavev2_adamw_lstm_28_lstm_cell_28_recurrent_kernel_m_read_readvariableop@
<savev2_adamw_lstm_28_lstm_cell_28_bias_m_read_readvariableopB
>savev2_adamw_lstm_29_lstm_cell_29_kernel_m_read_readvariableopL
Hsavev2_adamw_lstm_29_lstm_cell_29_recurrent_kernel_m_read_readvariableop@
<savev2_adamw_lstm_29_lstm_cell_29_bias_m_read_readvariableopC
?savev2_adamw_batch_normalization_28_gamma_v_read_readvariableopB
>savev2_adamw_batch_normalization_28_beta_v_read_readvariableopC
?savev2_adamw_batch_normalization_29_gamma_v_read_readvariableopB
>savev2_adamw_batch_normalization_29_beta_v_read_readvariableop6
2savev2_adamw_dense_14_kernel_v_read_readvariableop4
0savev2_adamw_dense_14_bias_v_read_readvariableopB
>savev2_adamw_lstm_28_lstm_cell_28_kernel_v_read_readvariableopL
Hsavev2_adamw_lstm_28_lstm_cell_28_recurrent_kernel_v_read_readvariableop@
<savev2_adamw_lstm_28_lstm_cell_28_bias_v_read_readvariableopB
>savev2_adamw_lstm_29_lstm_cell_29_kernel_v_read_readvariableopL
Hsavev2_adamw_lstm_29_lstm_cell_29_recurrent_kernel_v_read_readvariableop@
<savev2_adamw_lstm_29_lstm_cell_29_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ύ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*η
valueέBΪ3B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΣ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ϊ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_28_gamma_read_readvariableop6savev2_batch_normalization_28_beta_read_readvariableop=savev2_batch_normalization_28_moving_mean_read_readvariableopAsavev2_batch_normalization_28_moving_variance_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop%savev2_adamw_iter_read_readvariableop'savev2_adamw_beta_1_read_readvariableop'savev2_adamw_beta_2_read_readvariableop&savev2_adamw_decay_read_readvariableop.savev2_adamw_learning_rate_read_readvariableop-savev2_adamw_weight_decay_read_readvariableop6savev2_lstm_28_lstm_cell_28_kernel_read_readvariableop@savev2_lstm_28_lstm_cell_28_recurrent_kernel_read_readvariableop4savev2_lstm_28_lstm_cell_28_bias_read_readvariableop6savev2_lstm_29_lstm_cell_29_kernel_read_readvariableop@savev2_lstm_29_lstm_cell_29_recurrent_kernel_read_readvariableop4savev2_lstm_29_lstm_cell_29_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adamw_batch_normalization_28_gamma_m_read_readvariableop>savev2_adamw_batch_normalization_28_beta_m_read_readvariableop?savev2_adamw_batch_normalization_29_gamma_m_read_readvariableop>savev2_adamw_batch_normalization_29_beta_m_read_readvariableop2savev2_adamw_dense_14_kernel_m_read_readvariableop0savev2_adamw_dense_14_bias_m_read_readvariableop>savev2_adamw_lstm_28_lstm_cell_28_kernel_m_read_readvariableopHsavev2_adamw_lstm_28_lstm_cell_28_recurrent_kernel_m_read_readvariableop<savev2_adamw_lstm_28_lstm_cell_28_bias_m_read_readvariableop>savev2_adamw_lstm_29_lstm_cell_29_kernel_m_read_readvariableopHsavev2_adamw_lstm_29_lstm_cell_29_recurrent_kernel_m_read_readvariableop<savev2_adamw_lstm_29_lstm_cell_29_bias_m_read_readvariableop?savev2_adamw_batch_normalization_28_gamma_v_read_readvariableop>savev2_adamw_batch_normalization_28_beta_v_read_readvariableop?savev2_adamw_batch_normalization_29_gamma_v_read_readvariableop>savev2_adamw_batch_normalization_29_beta_v_read_readvariableop2savev2_adamw_dense_14_kernel_v_read_readvariableop0savev2_adamw_dense_14_bias_v_read_readvariableop>savev2_adamw_lstm_28_lstm_cell_28_kernel_v_read_readvariableopHsavev2_adamw_lstm_28_lstm_cell_28_recurrent_kernel_v_read_readvariableop<savev2_adamw_lstm_28_lstm_cell_28_bias_v_read_readvariableop>savev2_adamw_lstm_29_lstm_cell_29_kernel_v_read_readvariableopHsavev2_adamw_lstm_29_lstm_cell_29_recurrent_kernel_v_read_readvariableop<savev2_adamw_lstm_29_lstm_cell_29_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *A
dtypes7
523	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ω
_input_shapesΗ
Δ: ::::::::::: : : : : : : : : : : : : : : : ::::::: : : : : : ::::::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::
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
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

: :$" 

_output_shapes

: : #

_output_shapes
: :$$ 

_output_shapes

: :$% 

_output_shapes

: : &

_output_shapes
: : '

_output_shapes
:: (

_output_shapes
:: )

_output_shapes
:: *

_output_shapes
::$+ 

_output_shapes

:: ,

_output_shapes
::$- 

_output_shapes

: :$. 

_output_shapes

: : /

_output_shapes
: :$0 

_output_shapes

: :$1 

_output_shapes

: : 2

_output_shapes
: :3

_output_shapes
: 
8
Κ
while_body_196312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
8
Κ
while_body_196741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
θ
σ
-__inference_lstm_cell_29_layer_call_fn_197736

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2’StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
ͺ
?
7__inference_batch_normalization_29_layer_call_fn_197534

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194408o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
R

'sequential_14_lstm_28_while_body_193340H
Dsequential_14_lstm_28_while_sequential_14_lstm_28_while_loop_counterN
Jsequential_14_lstm_28_while_sequential_14_lstm_28_while_maximum_iterations+
'sequential_14_lstm_28_while_placeholder-
)sequential_14_lstm_28_while_placeholder_1-
)sequential_14_lstm_28_while_placeholder_2-
)sequential_14_lstm_28_while_placeholder_3G
Csequential_14_lstm_28_while_sequential_14_lstm_28_strided_slice_1_0
sequential_14_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_28_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_14_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0: ]
Ksequential_14_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0: X
Jsequential_14_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0: (
$sequential_14_lstm_28_while_identity*
&sequential_14_lstm_28_while_identity_1*
&sequential_14_lstm_28_while_identity_2*
&sequential_14_lstm_28_while_identity_3*
&sequential_14_lstm_28_while_identity_4*
&sequential_14_lstm_28_while_identity_5E
Asequential_14_lstm_28_while_sequential_14_lstm_28_strided_slice_1
}sequential_14_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_28_tensorarrayunstack_tensorlistfromtensorY
Gsequential_14_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource: [
Isequential_14_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource: V
Hsequential_14_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource: ’?sequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp’>sequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp’@sequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp
Msequential_14/lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?sequential_14/lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_14_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_28_tensorarrayunstack_tensorlistfromtensor_0'sequential_14_lstm_28_while_placeholderVsequential_14/lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0Θ
>sequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpIsequential_14_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ϋ
/sequential_14/lstm_28/while/lstm_cell_28/MatMulMatMulFsequential_14/lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Μ
@sequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpKsequential_14_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0β
1sequential_14/lstm_28/while/lstm_cell_28/MatMul_1MatMul)sequential_14_lstm_28_while_placeholder_2Hsequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ί
,sequential_14/lstm_28/while/lstm_cell_28/addAddV29sequential_14/lstm_28/while/lstm_cell_28/MatMul:product:0;sequential_14/lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? Ζ
?sequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpJsequential_14_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0θ
0sequential_14/lstm_28/while/lstm_cell_28/BiasAddBiasAdd0sequential_14/lstm_28/while/lstm_cell_28/add:z:0Gsequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? z
8sequential_14/lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_14/lstm_28/while/lstm_cell_28/splitSplitAsequential_14/lstm_28/while/lstm_cell_28/split/split_dim:output:09sequential_14/lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split¦
0sequential_14/lstm_28/while/lstm_cell_28/SigmoidSigmoid7sequential_14/lstm_28/while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????¨
2sequential_14/lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid7sequential_14/lstm_28/while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????Θ
,sequential_14/lstm_28/while/lstm_cell_28/mulMul6sequential_14/lstm_28/while/lstm_cell_28/Sigmoid_1:y:0)sequential_14_lstm_28_while_placeholder_3*
T0*'
_output_shapes
:????????? 
-sequential_14/lstm_28/while/lstm_cell_28/ReluRelu7sequential_14/lstm_28/while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????Ϊ
.sequential_14/lstm_28/while/lstm_cell_28/mul_1Mul4sequential_14/lstm_28/while/lstm_cell_28/Sigmoid:y:0;sequential_14/lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????Ο
.sequential_14/lstm_28/while/lstm_cell_28/add_1AddV20sequential_14/lstm_28/while/lstm_cell_28/mul:z:02sequential_14/lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????¨
2sequential_14/lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid7sequential_14/lstm_28/while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????
/sequential_14/lstm_28/while/lstm_cell_28/Relu_1Relu2sequential_14/lstm_28/while/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????ή
.sequential_14/lstm_28/while/lstm_cell_28/mul_2Mul6sequential_14/lstm_28/while/lstm_cell_28/Sigmoid_2:y:0=sequential_14/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
@sequential_14/lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_14_lstm_28_while_placeholder_1'sequential_14_lstm_28_while_placeholder2sequential_14/lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?c
!sequential_14/lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_14/lstm_28/while/addAddV2'sequential_14_lstm_28_while_placeholder*sequential_14/lstm_28/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_14/lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ώ
!sequential_14/lstm_28/while/add_1AddV2Dsequential_14_lstm_28_while_sequential_14_lstm_28_while_loop_counter,sequential_14/lstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_14/lstm_28/while/IdentityIdentity%sequential_14/lstm_28/while/add_1:z:0!^sequential_14/lstm_28/while/NoOp*
T0*
_output_shapes
: Β
&sequential_14/lstm_28/while/Identity_1IdentityJsequential_14_lstm_28_while_sequential_14_lstm_28_while_maximum_iterations!^sequential_14/lstm_28/while/NoOp*
T0*
_output_shapes
: 
&sequential_14/lstm_28/while/Identity_2Identity#sequential_14/lstm_28/while/add:z:0!^sequential_14/lstm_28/while/NoOp*
T0*
_output_shapes
: Ϋ
&sequential_14/lstm_28/while/Identity_3IdentityPsequential_14/lstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_14/lstm_28/while/NoOp*
T0*
_output_shapes
: :ιθ?»
&sequential_14/lstm_28/while/Identity_4Identity2sequential_14/lstm_28/while/lstm_cell_28/mul_2:z:0!^sequential_14/lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????»
&sequential_14/lstm_28/while/Identity_5Identity2sequential_14/lstm_28/while/lstm_cell_28/add_1:z:0!^sequential_14/lstm_28/while/NoOp*
T0*'
_output_shapes
:?????????¨
 sequential_14/lstm_28/while/NoOpNoOp@^sequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_14_lstm_28_while_identity-sequential_14/lstm_28/while/Identity:output:0"Y
&sequential_14_lstm_28_while_identity_1/sequential_14/lstm_28/while/Identity_1:output:0"Y
&sequential_14_lstm_28_while_identity_2/sequential_14/lstm_28/while/Identity_2:output:0"Y
&sequential_14_lstm_28_while_identity_3/sequential_14/lstm_28/while/Identity_3:output:0"Y
&sequential_14_lstm_28_while_identity_4/sequential_14/lstm_28/while/Identity_4:output:0"Y
&sequential_14_lstm_28_while_identity_5/sequential_14/lstm_28/while/Identity_5:output:0"
Hsequential_14_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resourceJsequential_14_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"
Isequential_14_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resourceKsequential_14_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"
Gsequential_14_lstm_28_while_lstm_cell_28_matmul_readvariableop_resourceIsequential_14_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"
Asequential_14_lstm_28_while_sequential_14_lstm_28_strided_slice_1Csequential_14_lstm_28_while_sequential_14_lstm_28_strided_slice_1_0"
}sequential_14_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_28_tensorarrayunstack_tensorlistfromtensorsequential_14_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2
?sequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?sequential_14/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2
>sequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp>sequential_14/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2
@sequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp@sequential_14/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
§!

I__inference_sequential_14_layer_call_and_return_conditional_losses_194809

inputs 
lstm_28_194616:  
lstm_28_194618: 
lstm_28_194620: +
batch_normalization_28_194623:+
batch_normalization_28_194625:+
batch_normalization_28_194627:+
batch_normalization_28_194629: 
lstm_29_194775:  
lstm_29_194777: 
lstm_29_194779: +
batch_normalization_29_194782:+
batch_normalization_29_194784:+
batch_normalization_29_194786:+
batch_normalization_29_194788:!
dense_14_194803:
dense_14_194805:
identity’.batch_normalization_28/StatefulPartitionedCall’.batch_normalization_29/StatefulPartitionedCall’ dense_14/StatefulPartitionedCall’lstm_28/StatefulPartitionedCall’lstm_29/StatefulPartitionedCall
lstm_28/StatefulPartitionedCallStatefulPartitionedCallinputslstm_28_194616lstm_28_194618lstm_28_194620*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_194615
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0batch_normalization_28_194623batch_normalization_28_194625batch_normalization_28_194627batch_normalization_28_194629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_193976―
lstm_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0lstm_29_194775lstm_29_194777lstm_29_194779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_194774
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_29/StatefulPartitionedCall:output:0batch_normalization_29_194782batch_normalization_29_194784batch_normalization_29_194786batch_normalization_29_194788*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194408‘
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0dense_14_194803dense_14_194805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_194802x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall ^lstm_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall2B
lstm_29/StatefulPartitionedCalllstm_29/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
8

C__inference_lstm_29_layer_call_and_return_conditional_losses_194375

inputs%
lstm_cell_29_194293: %
lstm_cell_29_194295: !
lstm_cell_29_194297: 
identity’$lstm_cell_29/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskυ
$lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_29_194293lstm_cell_29_194295lstm_cell_29_194297*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194247n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_29_194293lstm_cell_29_194295lstm_cell_29_194297*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194306*
condR
while_cond_194305*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????u
NoOpNoOp%^lstm_cell_29/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_29/StatefulPartitionedCall$lstm_cell_29/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
8

C__inference_lstm_28_layer_call_and_return_conditional_losses_193752

inputs%
lstm_cell_28_193670: %
lstm_cell_28_193672: !
lstm_cell_28_193674: 
identity’$lstm_cell_28/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskυ
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_193670lstm_cell_28_193672lstm_cell_28_193674*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193669n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_193670lstm_cell_28_193672lstm_cell_28_193674*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_193683*
condR
while_cond_193682*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????u
NoOpNoOp%^lstm_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
΅
Γ
while_cond_196740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_196740___redundant_placeholder04
0while_while_cond_196740___redundant_placeholder14
0while_while_cond_196740___redundant_placeholder24
0while_while_cond_196740___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_28_layer_call_and_return_conditional_losses_194615

inputs=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194531*
condR
while_cond_194530*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs

ϋ
'sequential_14_lstm_29_while_cond_193494H
Dsequential_14_lstm_29_while_sequential_14_lstm_29_while_loop_counterN
Jsequential_14_lstm_29_while_sequential_14_lstm_29_while_maximum_iterations+
'sequential_14_lstm_29_while_placeholder-
)sequential_14_lstm_29_while_placeholder_1-
)sequential_14_lstm_29_while_placeholder_2-
)sequential_14_lstm_29_while_placeholder_3J
Fsequential_14_lstm_29_while_less_sequential_14_lstm_29_strided_slice_1`
\sequential_14_lstm_29_while_sequential_14_lstm_29_while_cond_193494___redundant_placeholder0`
\sequential_14_lstm_29_while_sequential_14_lstm_29_while_cond_193494___redundant_placeholder1`
\sequential_14_lstm_29_while_sequential_14_lstm_29_while_cond_193494___redundant_placeholder2`
\sequential_14_lstm_29_while_sequential_14_lstm_29_while_cond_193494___redundant_placeholder3(
$sequential_14_lstm_29_while_identity
Ί
 sequential_14/lstm_29/while/LessLess'sequential_14_lstm_29_while_placeholderFsequential_14_lstm_29_while_less_sequential_14_lstm_29_strided_slice_1*
T0*
_output_shapes
: w
$sequential_14/lstm_29/while/IdentityIdentity$sequential_14/lstm_29/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_14_lstm_29_while_identity-sequential_14/lstm_29/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:


γ
lstm_28_while_cond_195558,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3.
*lstm_28_while_less_lstm_28_strided_slice_1D
@lstm_28_while_lstm_28_while_cond_195558___redundant_placeholder0D
@lstm_28_while_lstm_28_while_cond_195558___redundant_placeholder1D
@lstm_28_while_lstm_28_while_cond_195558___redundant_placeholder2D
@lstm_28_while_lstm_28_while_cond_195558___redundant_placeholder3
lstm_28_while_identity

lstm_28/while/LessLesslstm_28_while_placeholder*lstm_28_while_less_lstm_28_strided_slice_1*
T0*
_output_shapes
: [
lstm_28/while/IdentityIdentitylstm_28/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_28_while_identitylstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
8
Κ
while_body_194690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
Β

)__inference_dense_14_layer_call_fn_197610

inputs
unknown:
	unknown_0:
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_194802o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Μ
"
"__inference__traced_restore_198150
file_prefix;
-assignvariableop_batch_normalization_28_gamma:<
.assignvariableop_1_batch_normalization_28_beta:C
5assignvariableop_2_batch_normalization_28_moving_mean:G
9assignvariableop_3_batch_normalization_28_moving_variance:=
/assignvariableop_4_batch_normalization_29_gamma:<
.assignvariableop_5_batch_normalization_29_beta:C
5assignvariableop_6_batch_normalization_29_moving_mean:G
9assignvariableop_7_batch_normalization_29_moving_variance:4
"assignvariableop_8_dense_14_kernel:.
 assignvariableop_9_dense_14_bias:(
assignvariableop_10_adamw_iter:	 *
 assignvariableop_11_adamw_beta_1: *
 assignvariableop_12_adamw_beta_2: )
assignvariableop_13_adamw_decay: 1
'assignvariableop_14_adamw_learning_rate: 0
&assignvariableop_15_adamw_weight_decay: A
/assignvariableop_16_lstm_28_lstm_cell_28_kernel: K
9assignvariableop_17_lstm_28_lstm_cell_28_recurrent_kernel: ;
-assignvariableop_18_lstm_28_lstm_cell_28_bias: A
/assignvariableop_19_lstm_29_lstm_cell_29_kernel: K
9assignvariableop_20_lstm_29_lstm_cell_29_recurrent_kernel: ;
-assignvariableop_21_lstm_29_lstm_cell_29_bias: #
assignvariableop_22_total: #
assignvariableop_23_count: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: F
8assignvariableop_26_adamw_batch_normalization_28_gamma_m:E
7assignvariableop_27_adamw_batch_normalization_28_beta_m:F
8assignvariableop_28_adamw_batch_normalization_29_gamma_m:E
7assignvariableop_29_adamw_batch_normalization_29_beta_m:=
+assignvariableop_30_adamw_dense_14_kernel_m:7
)assignvariableop_31_adamw_dense_14_bias_m:I
7assignvariableop_32_adamw_lstm_28_lstm_cell_28_kernel_m: S
Aassignvariableop_33_adamw_lstm_28_lstm_cell_28_recurrent_kernel_m: C
5assignvariableop_34_adamw_lstm_28_lstm_cell_28_bias_m: I
7assignvariableop_35_adamw_lstm_29_lstm_cell_29_kernel_m: S
Aassignvariableop_36_adamw_lstm_29_lstm_cell_29_recurrent_kernel_m: C
5assignvariableop_37_adamw_lstm_29_lstm_cell_29_bias_m: F
8assignvariableop_38_adamw_batch_normalization_28_gamma_v:E
7assignvariableop_39_adamw_batch_normalization_28_beta_v:F
8assignvariableop_40_adamw_batch_normalization_29_gamma_v:E
7assignvariableop_41_adamw_batch_normalization_29_beta_v:=
+assignvariableop_42_adamw_dense_14_kernel_v:7
)assignvariableop_43_adamw_dense_14_bias_v:I
7assignvariableop_44_adamw_lstm_28_lstm_cell_28_kernel_v: S
Aassignvariableop_45_adamw_lstm_28_lstm_cell_28_recurrent_kernel_v: C
5assignvariableop_46_adamw_lstm_28_lstm_cell_28_bias_v: I
7assignvariableop_47_adamw_lstm_29_lstm_cell_29_kernel_v: S
Aassignvariableop_48_adamw_lstm_29_lstm_cell_29_recurrent_kernel_v: C
5assignvariableop_49_adamw_lstm_29_lstm_cell_29_bias_v: 
identity_51’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9Α
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*η
valueέBΪ3B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*β
_output_shapesΟ
Μ:::::::::::::::::::::::::::::::::::::::::::::::::::*A
dtypes7
523	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_28_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_28_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_28_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_28_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp/assignvariableop_4_batch_normalization_29_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_29_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_6AssignVariableOp5assignvariableop_6_batch_normalization_29_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_7AssignVariableOp9assignvariableop_7_batch_normalization_29_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adamw_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_adamw_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp assignvariableop_12_adamw_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adamw_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adamw_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adamw_weight_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_28_lstm_cell_28_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ͺ
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_28_lstm_cell_28_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_28_lstm_cell_28_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_19AssignVariableOp/assignvariableop_19_lstm_29_lstm_cell_29_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ͺ
AssignVariableOp_20AssignVariableOp9assignvariableop_20_lstm_29_lstm_cell_29_recurrent_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp-assignvariableop_21_lstm_29_lstm_cell_29_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adamw_batch_normalization_28_gamma_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adamw_batch_normalization_28_beta_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_28AssignVariableOp8assignvariableop_28_adamw_batch_normalization_29_gamma_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adamw_batch_normalization_29_beta_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adamw_dense_14_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adamw_dense_14_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_32AssignVariableOp7assignvariableop_32_adamw_lstm_28_lstm_cell_28_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_33AssignVariableOpAassignvariableop_33_adamw_lstm_28_lstm_cell_28_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adamw_lstm_28_lstm_cell_28_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adamw_lstm_29_lstm_cell_29_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_36AssignVariableOpAassignvariableop_36_adamw_lstm_29_lstm_cell_29_recurrent_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_37AssignVariableOp5assignvariableop_37_adamw_lstm_29_lstm_cell_29_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_38AssignVariableOp8assignvariableop_38_adamw_batch_normalization_28_gamma_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adamw_batch_normalization_28_beta_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_40AssignVariableOp8assignvariableop_40_adamw_batch_normalization_29_gamma_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adamw_batch_normalization_29_beta_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adamw_dense_14_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adamw_dense_14_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adamw_lstm_28_lstm_cell_28_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_45AssignVariableOpAassignvariableop_45_adamw_lstm_28_lstm_cell_28_recurrent_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_46AssignVariableOp5assignvariableop_46_adamw_lstm_28_lstm_cell_28_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adamw_lstm_29_lstm_cell_29_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_48AssignVariableOpAassignvariableop_48_adamw_lstm_29_lstm_cell_29_recurrent_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adamw_lstm_29_lstm_cell_29_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 	
Identity_50Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_51IdentityIdentity_50:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_51Identity_51:output:0*y
_input_shapesh
f: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
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
³

.__inference_sequential_14_layer_call_fn_194844
lstm_28_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:
identity’StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_194809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input

₯
!__inference__wrapped_model_193602
lstm_28_inputS
Asequential_14_lstm_28_lstm_cell_28_matmul_readvariableop_resource: U
Csequential_14_lstm_28_lstm_cell_28_matmul_1_readvariableop_resource: P
Bsequential_14_lstm_28_lstm_cell_28_biasadd_readvariableop_resource: T
Fsequential_14_batch_normalization_28_batchnorm_readvariableop_resource:X
Jsequential_14_batch_normalization_28_batchnorm_mul_readvariableop_resource:V
Hsequential_14_batch_normalization_28_batchnorm_readvariableop_1_resource:V
Hsequential_14_batch_normalization_28_batchnorm_readvariableop_2_resource:S
Asequential_14_lstm_29_lstm_cell_29_matmul_readvariableop_resource: U
Csequential_14_lstm_29_lstm_cell_29_matmul_1_readvariableop_resource: P
Bsequential_14_lstm_29_lstm_cell_29_biasadd_readvariableop_resource: T
Fsequential_14_batch_normalization_29_batchnorm_readvariableop_resource:X
Jsequential_14_batch_normalization_29_batchnorm_mul_readvariableop_resource:V
Hsequential_14_batch_normalization_29_batchnorm_readvariableop_1_resource:V
Hsequential_14_batch_normalization_29_batchnorm_readvariableop_2_resource:G
5sequential_14_dense_14_matmul_readvariableop_resource:D
6sequential_14_dense_14_biasadd_readvariableop_resource:
identity’=sequential_14/batch_normalization_28/batchnorm/ReadVariableOp’?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_1’?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_2’Asequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOp’=sequential_14/batch_normalization_29/batchnorm/ReadVariableOp’?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_1’?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_2’Asequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOp’-sequential_14/dense_14/BiasAdd/ReadVariableOp’,sequential_14/dense_14/MatMul/ReadVariableOp’9sequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp’8sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOp’:sequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp’sequential_14/lstm_28/while’9sequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp’8sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOp’:sequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp’sequential_14/lstm_29/whileX
sequential_14/lstm_28/ShapeShapelstm_28_input*
T0*
_output_shapes
:s
)sequential_14/lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_14/lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_14/lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#sequential_14/lstm_28/strided_sliceStridedSlice$sequential_14/lstm_28/Shape:output:02sequential_14/lstm_28/strided_slice/stack:output:04sequential_14/lstm_28/strided_slice/stack_1:output:04sequential_14/lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_14/lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :΅
"sequential_14/lstm_28/zeros/packedPack,sequential_14/lstm_28/strided_slice:output:0-sequential_14/lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_14/lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_14/lstm_28/zerosFill+sequential_14/lstm_28/zeros/packed:output:0*sequential_14/lstm_28/zeros/Const:output:0*
T0*'
_output_shapes
:?????????h
&sequential_14/lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ή
$sequential_14/lstm_28/zeros_1/packedPack,sequential_14/lstm_28/strided_slice:output:0/sequential_14/lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_14/lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ΄
sequential_14/lstm_28/zeros_1Fill-sequential_14/lstm_28/zeros_1/packed:output:0,sequential_14/lstm_28/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????y
$sequential_14/lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_14/lstm_28/transpose	Transposelstm_28_input-sequential_14/lstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:?????????p
sequential_14/lstm_28/Shape_1Shape#sequential_14/lstm_28/transpose:y:0*
T0*
_output_shapes
:u
+sequential_14/lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_14/lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ι
%sequential_14/lstm_28/strided_slice_1StridedSlice&sequential_14/lstm_28/Shape_1:output:04sequential_14/lstm_28/strided_slice_1/stack:output:06sequential_14/lstm_28/strided_slice_1/stack_1:output:06sequential_14/lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_14/lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????φ
#sequential_14/lstm_28/TensorArrayV2TensorListReserve:sequential_14/lstm_28/TensorArrayV2/element_shape:output:0.sequential_14/lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
Ksequential_14/lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ’
=sequential_14/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_14/lstm_28/transpose:y:0Tsequential_14/lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?u
+sequential_14/lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_14/lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Χ
%sequential_14/lstm_28/strided_slice_2StridedSlice#sequential_14/lstm_28/transpose:y:04sequential_14/lstm_28/strided_slice_2/stack:output:06sequential_14/lstm_28/strided_slice_2/stack_1:output:06sequential_14/lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskΊ
8sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpAsequential_14_lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Χ
)sequential_14/lstm_28/lstm_cell_28/MatMulMatMul.sequential_14/lstm_28/strided_slice_2:output:0@sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Ύ
:sequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpCsequential_14_lstm_28_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ρ
+sequential_14/lstm_28/lstm_cell_28/MatMul_1MatMul$sequential_14/lstm_28/zeros:output:0Bsequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Ν
&sequential_14/lstm_28/lstm_cell_28/addAddV23sequential_14/lstm_28/lstm_cell_28/MatMul:product:05sequential_14/lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? Έ
9sequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpBsequential_14_lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Φ
*sequential_14/lstm_28/lstm_cell_28/BiasAddBiasAdd*sequential_14/lstm_28/lstm_cell_28/add:z:0Asequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
2sequential_14/lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_14/lstm_28/lstm_cell_28/splitSplit;sequential_14/lstm_28/lstm_cell_28/split/split_dim:output:03sequential_14/lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
*sequential_14/lstm_28/lstm_cell_28/SigmoidSigmoid1sequential_14/lstm_28/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????
,sequential_14/lstm_28/lstm_cell_28/Sigmoid_1Sigmoid1sequential_14/lstm_28/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????Ή
&sequential_14/lstm_28/lstm_cell_28/mulMul0sequential_14/lstm_28/lstm_cell_28/Sigmoid_1:y:0&sequential_14/lstm_28/zeros_1:output:0*
T0*'
_output_shapes
:?????????
'sequential_14/lstm_28/lstm_cell_28/ReluRelu1sequential_14/lstm_28/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????Θ
(sequential_14/lstm_28/lstm_cell_28/mul_1Mul.sequential_14/lstm_28/lstm_cell_28/Sigmoid:y:05sequential_14/lstm_28/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????½
(sequential_14/lstm_28/lstm_cell_28/add_1AddV2*sequential_14/lstm_28/lstm_cell_28/mul:z:0,sequential_14/lstm_28/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????
,sequential_14/lstm_28/lstm_cell_28/Sigmoid_2Sigmoid1sequential_14/lstm_28/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????
)sequential_14/lstm_28/lstm_cell_28/Relu_1Relu,sequential_14/lstm_28/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????Μ
(sequential_14/lstm_28/lstm_cell_28/mul_2Mul0sequential_14/lstm_28/lstm_cell_28/Sigmoid_2:y:07sequential_14/lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
3sequential_14/lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ϊ
%sequential_14/lstm_28/TensorArrayV2_1TensorListReserve<sequential_14/lstm_28/TensorArrayV2_1/element_shape:output:0.sequential_14/lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?\
sequential_14/lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_14/lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_14/lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ά
sequential_14/lstm_28/whileWhile1sequential_14/lstm_28/while/loop_counter:output:07sequential_14/lstm_28/while/maximum_iterations:output:0#sequential_14/lstm_28/time:output:0.sequential_14/lstm_28/TensorArrayV2_1:handle:0$sequential_14/lstm_28/zeros:output:0&sequential_14/lstm_28/zeros_1:output:0.sequential_14/lstm_28/strided_slice_1:output:0Msequential_14/lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_14_lstm_28_lstm_cell_28_matmul_readvariableop_resourceCsequential_14_lstm_28_lstm_cell_28_matmul_1_readvariableop_resourceBsequential_14_lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_14_lstm_28_while_body_193340*3
cond+R)
'sequential_14_lstm_28_while_cond_193339*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
Fsequential_14/lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
8sequential_14/lstm_28/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_14/lstm_28/while:output:3Osequential_14/lstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0~
+sequential_14/lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_14/lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:υ
%sequential_14/lstm_28/strided_slice_3StridedSliceAsequential_14/lstm_28/TensorArrayV2Stack/TensorListStack:tensor:04sequential_14/lstm_28/strided_slice_3/stack:output:06sequential_14/lstm_28/strided_slice_3/stack_1:output:06sequential_14/lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask{
&sequential_14/lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ψ
!sequential_14/lstm_28/transpose_1	TransposeAsequential_14/lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_14/lstm_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????q
sequential_14/lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ΐ
=sequential_14/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOpFsequential_14_batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4sequential_14/batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ζ
2sequential_14/batch_normalization_28/batchnorm/addAddV2Esequential_14/batch_normalization_28/batchnorm/ReadVariableOp:value:0=sequential_14/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:
4sequential_14/batch_normalization_28/batchnorm/RsqrtRsqrt6sequential_14/batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:Θ
Asequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_14_batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0γ
2sequential_14/batch_normalization_28/batchnorm/mulMul8sequential_14/batch_normalization_28/batchnorm/Rsqrt:y:0Isequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Π
4sequential_14/batch_normalization_28/batchnorm/mul_1Mul%sequential_14/lstm_28/transpose_1:y:06sequential_14/batch_normalization_28/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????Δ
?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_14_batch_normalization_28_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0α
4sequential_14/batch_normalization_28/batchnorm/mul_2MulGsequential_14/batch_normalization_28/batchnorm/ReadVariableOp_1:value:06sequential_14/batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:Δ
?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_14_batch_normalization_28_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0α
2sequential_14/batch_normalization_28/batchnorm/subSubGsequential_14/batch_normalization_28/batchnorm/ReadVariableOp_2:value:08sequential_14/batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ε
4sequential_14/batch_normalization_28/batchnorm/add_1AddV28sequential_14/batch_normalization_28/batchnorm/mul_1:z:06sequential_14/batch_normalization_28/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????
sequential_14/lstm_29/ShapeShape8sequential_14/batch_normalization_28/batchnorm/add_1:z:0*
T0*
_output_shapes
:s
)sequential_14/lstm_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_14/lstm_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_14/lstm_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
#sequential_14/lstm_29/strided_sliceStridedSlice$sequential_14/lstm_29/Shape:output:02sequential_14/lstm_29/strided_slice/stack:output:04sequential_14/lstm_29/strided_slice/stack_1:output:04sequential_14/lstm_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_14/lstm_29/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :΅
"sequential_14/lstm_29/zeros/packedPack,sequential_14/lstm_29/strided_slice:output:0-sequential_14/lstm_29/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_14/lstm_29/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_14/lstm_29/zerosFill+sequential_14/lstm_29/zeros/packed:output:0*sequential_14/lstm_29/zeros/Const:output:0*
T0*'
_output_shapes
:?????????h
&sequential_14/lstm_29/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ή
$sequential_14/lstm_29/zeros_1/packedPack,sequential_14/lstm_29/strided_slice:output:0/sequential_14/lstm_29/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_14/lstm_29/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ΄
sequential_14/lstm_29/zeros_1Fill-sequential_14/lstm_29/zeros_1/packed:output:0,sequential_14/lstm_29/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????y
$sequential_14/lstm_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Λ
sequential_14/lstm_29/transpose	Transpose8sequential_14/batch_normalization_28/batchnorm/add_1:z:0-sequential_14/lstm_29/transpose/perm:output:0*
T0*+
_output_shapes
:?????????p
sequential_14/lstm_29/Shape_1Shape#sequential_14/lstm_29/transpose:y:0*
T0*
_output_shapes
:u
+sequential_14/lstm_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_14/lstm_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ι
%sequential_14/lstm_29/strided_slice_1StridedSlice&sequential_14/lstm_29/Shape_1:output:04sequential_14/lstm_29/strided_slice_1/stack:output:06sequential_14/lstm_29/strided_slice_1/stack_1:output:06sequential_14/lstm_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_14/lstm_29/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????φ
#sequential_14/lstm_29/TensorArrayV2TensorListReserve:sequential_14/lstm_29/TensorArrayV2/element_shape:output:0.sequential_14/lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
Ksequential_14/lstm_29/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ’
=sequential_14/lstm_29/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_14/lstm_29/transpose:y:0Tsequential_14/lstm_29/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?u
+sequential_14/lstm_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_14/lstm_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Χ
%sequential_14/lstm_29/strided_slice_2StridedSlice#sequential_14/lstm_29/transpose:y:04sequential_14/lstm_29/strided_slice_2/stack:output:06sequential_14/lstm_29/strided_slice_2/stack_1:output:06sequential_14/lstm_29/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskΊ
8sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOpReadVariableOpAsequential_14_lstm_29_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Χ
)sequential_14/lstm_29/lstm_cell_29/MatMulMatMul.sequential_14/lstm_29/strided_slice_2:output:0@sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Ύ
:sequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOpCsequential_14_lstm_29_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ρ
+sequential_14/lstm_29/lstm_cell_29/MatMul_1MatMul$sequential_14/lstm_29/zeros:output:0Bsequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Ν
&sequential_14/lstm_29/lstm_cell_29/addAddV23sequential_14/lstm_29/lstm_cell_29/MatMul:product:05sequential_14/lstm_29/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? Έ
9sequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOpBsequential_14_lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Φ
*sequential_14/lstm_29/lstm_cell_29/BiasAddBiasAdd*sequential_14/lstm_29/lstm_cell_29/add:z:0Asequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
2sequential_14/lstm_29/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_14/lstm_29/lstm_cell_29/splitSplit;sequential_14/lstm_29/lstm_cell_29/split/split_dim:output:03sequential_14/lstm_29/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
*sequential_14/lstm_29/lstm_cell_29/SigmoidSigmoid1sequential_14/lstm_29/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????
,sequential_14/lstm_29/lstm_cell_29/Sigmoid_1Sigmoid1sequential_14/lstm_29/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????Ή
&sequential_14/lstm_29/lstm_cell_29/mulMul0sequential_14/lstm_29/lstm_cell_29/Sigmoid_1:y:0&sequential_14/lstm_29/zeros_1:output:0*
T0*'
_output_shapes
:?????????
'sequential_14/lstm_29/lstm_cell_29/ReluRelu1sequential_14/lstm_29/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????Θ
(sequential_14/lstm_29/lstm_cell_29/mul_1Mul.sequential_14/lstm_29/lstm_cell_29/Sigmoid:y:05sequential_14/lstm_29/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????½
(sequential_14/lstm_29/lstm_cell_29/add_1AddV2*sequential_14/lstm_29/lstm_cell_29/mul:z:0,sequential_14/lstm_29/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????
,sequential_14/lstm_29/lstm_cell_29/Sigmoid_2Sigmoid1sequential_14/lstm_29/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????
)sequential_14/lstm_29/lstm_cell_29/Relu_1Relu,sequential_14/lstm_29/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????Μ
(sequential_14/lstm_29/lstm_cell_29/mul_2Mul0sequential_14/lstm_29/lstm_cell_29/Sigmoid_2:y:07sequential_14/lstm_29/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
3sequential_14/lstm_29/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ϊ
%sequential_14/lstm_29/TensorArrayV2_1TensorListReserve<sequential_14/lstm_29/TensorArrayV2_1/element_shape:output:0.sequential_14/lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?\
sequential_14/lstm_29/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_14/lstm_29/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_14/lstm_29/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ά
sequential_14/lstm_29/whileWhile1sequential_14/lstm_29/while/loop_counter:output:07sequential_14/lstm_29/while/maximum_iterations:output:0#sequential_14/lstm_29/time:output:0.sequential_14/lstm_29/TensorArrayV2_1:handle:0$sequential_14/lstm_29/zeros:output:0&sequential_14/lstm_29/zeros_1:output:0.sequential_14/lstm_29/strided_slice_1:output:0Msequential_14/lstm_29/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_14_lstm_29_lstm_cell_29_matmul_readvariableop_resourceCsequential_14_lstm_29_lstm_cell_29_matmul_1_readvariableop_resourceBsequential_14_lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_14_lstm_29_while_body_193495*3
cond+R)
'sequential_14_lstm_29_while_cond_193494*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
Fsequential_14/lstm_29/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
8sequential_14/lstm_29/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_14/lstm_29/while:output:3Osequential_14/lstm_29/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0~
+sequential_14/lstm_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_14/lstm_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_14/lstm_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:υ
%sequential_14/lstm_29/strided_slice_3StridedSliceAsequential_14/lstm_29/TensorArrayV2Stack/TensorListStack:tensor:04sequential_14/lstm_29/strided_slice_3/stack:output:06sequential_14/lstm_29/strided_slice_3/stack_1:output:06sequential_14/lstm_29/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask{
&sequential_14/lstm_29/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ψ
!sequential_14/lstm_29/transpose_1	TransposeAsequential_14/lstm_29/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_14/lstm_29/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????q
sequential_14/lstm_29/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ΐ
=sequential_14/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOpFsequential_14_batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4sequential_14/batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ζ
2sequential_14/batch_normalization_29/batchnorm/addAddV2Esequential_14/batch_normalization_29/batchnorm/ReadVariableOp:value:0=sequential_14/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:
4sequential_14/batch_normalization_29/batchnorm/RsqrtRsqrt6sequential_14/batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:Θ
Asequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_14_batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0γ
2sequential_14/batch_normalization_29/batchnorm/mulMul8sequential_14/batch_normalization_29/batchnorm/Rsqrt:y:0Isequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Υ
4sequential_14/batch_normalization_29/batchnorm/mul_1Mul.sequential_14/lstm_29/strided_slice_3:output:06sequential_14/batch_normalization_29/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????Δ
?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_14_batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0α
4sequential_14/batch_normalization_29/batchnorm/mul_2MulGsequential_14/batch_normalization_29/batchnorm/ReadVariableOp_1:value:06sequential_14/batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:Δ
?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_14_batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0α
2sequential_14/batch_normalization_29/batchnorm/subSubGsequential_14/batch_normalization_29/batchnorm/ReadVariableOp_2:value:08sequential_14/batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:α
4sequential_14/batch_normalization_29/batchnorm/add_1AddV28sequential_14/batch_normalization_29/batchnorm/mul_1:z:06sequential_14/batch_normalization_29/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????’
,sequential_14/dense_14/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ι
sequential_14/dense_14/MatMulMatMul8sequential_14/batch_normalization_29/batchnorm/add_1:z:04sequential_14/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
-sequential_14/dense_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_14/dense_14/BiasAddBiasAdd'sequential_14/dense_14/MatMul:product:05sequential_14/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_14/dense_14/ReluRelu'sequential_14/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_14/dense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Ω
NoOpNoOp>^sequential_14/batch_normalization_28/batchnorm/ReadVariableOp@^sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_1@^sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_2B^sequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOp>^sequential_14/batch_normalization_29/batchnorm/ReadVariableOp@^sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_1@^sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_2B^sequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOp.^sequential_14/dense_14/BiasAdd/ReadVariableOp-^sequential_14/dense_14/MatMul/ReadVariableOp:^sequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp9^sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOp;^sequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^sequential_14/lstm_28/while:^sequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp9^sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOp;^sequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp^sequential_14/lstm_29/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2~
=sequential_14/batch_normalization_28/batchnorm/ReadVariableOp=sequential_14/batch_normalization_28/batchnorm/ReadVariableOp2
?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_1?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_12
?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_2?sequential_14/batch_normalization_28/batchnorm/ReadVariableOp_22
Asequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOpAsequential_14/batch_normalization_28/batchnorm/mul/ReadVariableOp2~
=sequential_14/batch_normalization_29/batchnorm/ReadVariableOp=sequential_14/batch_normalization_29/batchnorm/ReadVariableOp2
?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_1?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_12
?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_2?sequential_14/batch_normalization_29/batchnorm/ReadVariableOp_22
Asequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOpAsequential_14/batch_normalization_29/batchnorm/mul/ReadVariableOp2^
-sequential_14/dense_14/BiasAdd/ReadVariableOp-sequential_14/dense_14/BiasAdd/ReadVariableOp2\
,sequential_14/dense_14/MatMul/ReadVariableOp,sequential_14/dense_14/MatMul/ReadVariableOp2v
9sequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp9sequential_14/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2t
8sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOp8sequential_14/lstm_28/lstm_cell_28/MatMul/ReadVariableOp2x
:sequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:sequential_14/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2:
sequential_14/lstm_28/whilesequential_14/lstm_28/while2v
9sequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp9sequential_14/lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp2t
8sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOp8sequential_14/lstm_29/lstm_cell_29/MatMul/ReadVariableOp2x
:sequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp:sequential_14/lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp2:
sequential_14/lstm_29/whilesequential_14/lstm_29/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input
ΛA
Κ

lstm_29_while_body_195714,
(lstm_29_while_lstm_29_while_loop_counter2
.lstm_29_while_lstm_29_while_maximum_iterations
lstm_29_while_placeholder
lstm_29_while_placeholder_1
lstm_29_while_placeholder_2
lstm_29_while_placeholder_3+
'lstm_29_while_lstm_29_strided_slice_1_0g
clstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0: O
=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0: J
<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0: 
lstm_29_while_identity
lstm_29_while_identity_1
lstm_29_while_identity_2
lstm_29_while_identity_3
lstm_29_while_identity_4
lstm_29_while_identity_5)
%lstm_29_while_lstm_29_strided_slice_1e
alstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensorK
9lstm_29_while_lstm_cell_29_matmul_readvariableop_resource: M
;lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource: H
:lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource: ’1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp’0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp’2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp
?lstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ξ
1lstm_29/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0lstm_29_while_placeholderHlstm_29/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0¬
0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ρ
!lstm_29/while/lstm_cell_29/MatMulMatMul8lstm_29/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? °
2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Έ
#lstm_29/while/lstm_cell_29/MatMul_1MatMullstm_29_while_placeholder_2:lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ΅
lstm_29/while/lstm_cell_29/addAddV2+lstm_29/while/lstm_cell_29/MatMul:product:0-lstm_29/while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? ͺ
1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ύ
"lstm_29/while/lstm_cell_29/BiasAddBiasAdd"lstm_29/while/lstm_cell_29/add:z:09lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? l
*lstm_29/while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_29/while/lstm_cell_29/splitSplit3lstm_29/while/lstm_cell_29/split/split_dim:output:0+lstm_29/while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split
"lstm_29/while/lstm_cell_29/SigmoidSigmoid)lstm_29/while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????
$lstm_29/while/lstm_cell_29/Sigmoid_1Sigmoid)lstm_29/while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
lstm_29/while/lstm_cell_29/mulMul(lstm_29/while/lstm_cell_29/Sigmoid_1:y:0lstm_29_while_placeholder_3*
T0*'
_output_shapes
:?????????
lstm_29/while/lstm_cell_29/ReluRelu)lstm_29/while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????°
 lstm_29/while/lstm_cell_29/mul_1Mul&lstm_29/while/lstm_cell_29/Sigmoid:y:0-lstm_29/while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????₯
 lstm_29/while/lstm_cell_29/add_1AddV2"lstm_29/while/lstm_cell_29/mul:z:0$lstm_29/while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????
$lstm_29/while/lstm_cell_29/Sigmoid_2Sigmoid)lstm_29/while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????
!lstm_29/while/lstm_cell_29/Relu_1Relu$lstm_29/while/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????΄
 lstm_29/while/lstm_cell_29/mul_2Mul(lstm_29/while/lstm_cell_29/Sigmoid_2:y:0/lstm_29/while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????ε
2lstm_29/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_29_while_placeholder_1lstm_29_while_placeholder$lstm_29/while/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?U
lstm_29/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_29/while/addAddV2lstm_29_while_placeholderlstm_29/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_29/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_29/while/add_1AddV2(lstm_29_while_lstm_29_while_loop_counterlstm_29/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_29/while/IdentityIdentitylstm_29/while/add_1:z:0^lstm_29/while/NoOp*
T0*
_output_shapes
: 
lstm_29/while/Identity_1Identity.lstm_29_while_lstm_29_while_maximum_iterations^lstm_29/while/NoOp*
T0*
_output_shapes
: q
lstm_29/while/Identity_2Identitylstm_29/while/add:z:0^lstm_29/while/NoOp*
T0*
_output_shapes
: ±
lstm_29/while/Identity_3IdentityBlstm_29/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_29/while/NoOp*
T0*
_output_shapes
: :ιθ?
lstm_29/while/Identity_4Identity$lstm_29/while/lstm_cell_29/mul_2:z:0^lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????
lstm_29/while/Identity_5Identity$lstm_29/while/lstm_cell_29/add_1:z:0^lstm_29/while/NoOp*
T0*'
_output_shapes
:?????????π
lstm_29/while/NoOpNoOp2^lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp1^lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp3^lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_29_while_identitylstm_29/while/Identity:output:0"=
lstm_29_while_identity_1!lstm_29/while/Identity_1:output:0"=
lstm_29_while_identity_2!lstm_29/while/Identity_2:output:0"=
lstm_29_while_identity_3!lstm_29/while/Identity_3:output:0"=
lstm_29_while_identity_4!lstm_29/while/Identity_4:output:0"=
lstm_29_while_identity_5!lstm_29/while/Identity_5:output:0"P
%lstm_29_while_lstm_29_strided_slice_1'lstm_29_while_lstm_29_strided_slice_1_0"z
:lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource<lstm_29_while_lstm_cell_29_biasadd_readvariableop_resource_0"|
;lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource=lstm_29_while_lstm_cell_29_matmul_1_readvariableop_resource_0"x
9lstm_29_while_lstm_cell_29_matmul_readvariableop_resource;lstm_29_while_lstm_cell_29_matmul_readvariableop_resource_0"Θ
alstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensorclstm_29_while_tensorarrayv2read_tensorlistgetitem_lstm_29_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp1lstm_29/while/lstm_cell_29/BiasAdd/ReadVariableOp2d
0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp0lstm_29/while/lstm_cell_29/MatMul/ReadVariableOp2h
2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp2lstm_29/while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
΅
Γ
while_cond_194305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194305___redundant_placeholder04
0while_while_cond_194305___redundant_placeholder14
0while_while_cond_194305___redundant_placeholder24
0while_while_cond_194305___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
τ
²
(__inference_lstm_29_layer_call_fn_196938

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_194774o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
΅
Γ
while_cond_197436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_197436___redundant_placeholder04
0while_while_cond_197436___redundant_placeholder14
0while_while_cond_197436___redundant_placeholder24
0while_while_cond_197436___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
Σ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197719

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
ΣJ

C__inference_lstm_29_layer_call_and_return_conditional_losses_197235
inputs_0=
+lstm_cell_29_matmul_readvariableop_resource: ?
-lstm_cell_29_matmul_1_readvariableop_resource: :
,lstm_cell_29_biasadd_readvariableop_resource: 
identity’#lstm_cell_29/BiasAdd/ReadVariableOp’"lstm_cell_29/MatMul/ReadVariableOp’$lstm_cell_29/MatMul_1/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_29/MatMul/ReadVariableOpReadVariableOp+lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMulMatMulstrided_slice_2:output:0*lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_29/MatMul_1MatMulzeros:output:0,lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_29/addAddV2lstm_cell_29/MatMul:product:0lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_29/BiasAddBiasAddlstm_cell_29/add:z:0+lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_29/splitSplit%lstm_cell_29/split/split_dim:output:0lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_29/SigmoidSigmoidlstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_1Sigmoidlstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_29/mulMullstm_cell_29/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_29/ReluRelulstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_1Mullstm_cell_29/Sigmoid:y:0lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_29/add_1AddV2lstm_cell_29/mul:z:0lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_29/Sigmoid_2Sigmoidlstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_29/Relu_1Relulstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_29/mul_2Mullstm_cell_29/Sigmoid_2:y:0!lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_29_matmul_readvariableop_resource-lstm_cell_29_matmul_1_readvariableop_resource,lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_197151*
condR
while_cond_197150*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_29/BiasAdd/ReadVariableOp#^lstm_cell_29/MatMul/ReadVariableOp%^lstm_cell_29/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_29/BiasAdd/ReadVariableOp#lstm_cell_29/BiasAdd/ReadVariableOp2H
"lstm_cell_29/MatMul/ReadVariableOp"lstm_cell_29/MatMul/ReadVariableOp2L
$lstm_cell_29/MatMul_1/ReadVariableOp$lstm_cell_29/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0


γ
lstm_29_while_cond_195713,
(lstm_29_while_lstm_29_while_loop_counter2
.lstm_29_while_lstm_29_while_maximum_iterations
lstm_29_while_placeholder
lstm_29_while_placeholder_1
lstm_29_while_placeholder_2
lstm_29_while_placeholder_3.
*lstm_29_while_less_lstm_29_strided_slice_1D
@lstm_29_while_lstm_29_while_cond_195713___redundant_placeholder0D
@lstm_29_while_lstm_29_while_cond_195713___redundant_placeholder1D
@lstm_29_while_lstm_29_while_cond_195713___redundant_placeholder2D
@lstm_29_while_lstm_29_while_cond_195713___redundant_placeholder3
lstm_29_while_identity

lstm_29/while/LessLesslstm_29_while_placeholder*lstm_29_while_less_lstm_29_strided_slice_1*
T0*
_output_shapes
: [
lstm_29/while/IdentityIdentitylstm_29/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_29_while_identitylstm_29/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
J

C__inference_lstm_28_layer_call_and_return_conditional_losses_196825

inputs=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_196741*
condR
while_cond_196740*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
8
Κ
while_body_197151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
Σ

H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197687

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
Λ

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194247

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
θ
σ
-__inference_lstm_cell_28_layer_call_fn_197655

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2’StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193815o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
8
Κ
while_body_197294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
8

C__inference_lstm_29_layer_call_and_return_conditional_losses_194184

inputs%
lstm_cell_29_194102: %
lstm_cell_29_194104: !
lstm_cell_29_194106: 
identity’$lstm_cell_29/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskυ
$lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_29_194102lstm_cell_29_194104lstm_cell_29_194106*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194101n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_29_194102lstm_cell_29_194104lstm_cell_29_194106*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_194115*
condR
while_cond_194114*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????u
NoOpNoOp%^lstm_cell_29/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_29/StatefulPartitionedCall$lstm_cell_29/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Ο
±
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197567

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ωή
κ
I__inference_sequential_14_layer_call_and_return_conditional_losses_195821

inputsE
3lstm_28_lstm_cell_28_matmul_readvariableop_resource: G
5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource: B
4lstm_28_lstm_cell_28_biasadd_readvariableop_resource: F
8batch_normalization_28_batchnorm_readvariableop_resource:J
<batch_normalization_28_batchnorm_mul_readvariableop_resource:H
:batch_normalization_28_batchnorm_readvariableop_1_resource:H
:batch_normalization_28_batchnorm_readvariableop_2_resource:E
3lstm_29_lstm_cell_29_matmul_readvariableop_resource: G
5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource: B
4lstm_29_lstm_cell_29_biasadd_readvariableop_resource: F
8batch_normalization_29_batchnorm_readvariableop_resource:J
<batch_normalization_29_batchnorm_mul_readvariableop_resource:H
:batch_normalization_29_batchnorm_readvariableop_1_resource:H
:batch_normalization_29_batchnorm_readvariableop_2_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identity’/batch_normalization_28/batchnorm/ReadVariableOp’1batch_normalization_28/batchnorm/ReadVariableOp_1’1batch_normalization_28/batchnorm/ReadVariableOp_2’3batch_normalization_28/batchnorm/mul/ReadVariableOp’/batch_normalization_29/batchnorm/ReadVariableOp’1batch_normalization_29/batchnorm/ReadVariableOp_1’1batch_normalization_29/batchnorm/ReadVariableOp_2’3batch_normalization_29/batchnorm/mul/ReadVariableOp’dense_14/BiasAdd/ReadVariableOp’dense_14/MatMul/ReadVariableOp’+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp’*lstm_28/lstm_cell_28/MatMul/ReadVariableOp’,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp’lstm_28/while’+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp’*lstm_29/lstm_cell_29/MatMul/ReadVariableOp’,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp’lstm_29/whileC
lstm_28/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
lstm_28/strided_sliceStridedSlicelstm_28/Shape:output:0$lstm_28/strided_slice/stack:output:0&lstm_28/strided_slice/stack_1:output:0&lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_28/zeros/packedPacklstm_28/strided_slice:output:0lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_28/zerosFilllstm_28/zeros/packed:output:0lstm_28/zeros/Const:output:0*
T0*'
_output_shapes
:?????????Z
lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_28/zeros_1/packedPacklstm_28/strided_slice:output:0!lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_28/zeros_1Filllstm_28/zeros_1/packed:output:0lstm_28/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????k
lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_28/transpose	Transposeinputslstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_28/Shape_1Shapelstm_28/transpose:y:0*
T0*
_output_shapes
:g
lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_28/strided_slice_1StridedSlicelstm_28/Shape_1:output:0&lstm_28/strided_slice_1/stack:output:0(lstm_28/strided_slice_1/stack_1:output:0(lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Μ
lstm_28/TensorArrayV2TensorListReserve,lstm_28/TensorArrayV2/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ψ
/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_28/transpose:y:0Flstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?g
lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_28/strided_slice_2StridedSlicelstm_28/transpose:y:0&lstm_28/strided_slice_2/stack:output:0(lstm_28/strided_slice_2/stack_1:output:0(lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0­
lstm_28/lstm_cell_28/MatMulMatMul lstm_28/strided_slice_2:output:02lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ’
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0§
lstm_28/lstm_cell_28/MatMul_1MatMullstm_28/zeros:output:04lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? £
lstm_28/lstm_cell_28/addAddV2%lstm_28/lstm_cell_28/MatMul:product:0'lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
lstm_28/lstm_cell_28/BiasAddBiasAddlstm_28/lstm_cell_28/add:z:03lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? f
$lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :υ
lstm_28/lstm_cell_28/splitSplit-lstm_28/lstm_cell_28/split/split_dim:output:0%lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split~
lstm_28/lstm_cell_28/SigmoidSigmoid#lstm_28/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/Sigmoid_1Sigmoid#lstm_28/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/mulMul"lstm_28/lstm_cell_28/Sigmoid_1:y:0lstm_28/zeros_1:output:0*
T0*'
_output_shapes
:?????????x
lstm_28/lstm_cell_28/ReluRelu#lstm_28/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/mul_1Mul lstm_28/lstm_cell_28/Sigmoid:y:0'lstm_28/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/add_1AddV2lstm_28/lstm_cell_28/mul:z:0lstm_28/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????
lstm_28/lstm_cell_28/Sigmoid_2Sigmoid#lstm_28/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????u
lstm_28/lstm_cell_28/Relu_1Relulstm_28/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????’
lstm_28/lstm_cell_28/mul_2Mul"lstm_28/lstm_cell_28/Sigmoid_2:y:0)lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????v
%lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Π
lstm_28/TensorArrayV2_1TensorListReserve.lstm_28/TensorArrayV2_1/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?N
lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ς
lstm_28/whileWhile#lstm_28/while/loop_counter:output:0)lstm_28/while/maximum_iterations:output:0lstm_28/time:output:0 lstm_28/TensorArrayV2_1:handle:0lstm_28/zeros:output:0lstm_28/zeros_1:output:0 lstm_28/strided_slice_1:output:0?lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_28_lstm_cell_28_matmul_readvariableop_resource5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_28_while_body_195559*%
condR
lstm_28_while_cond_195558*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ϊ
*lstm_28/TensorArrayV2Stack/TensorListStackTensorListStacklstm_28/while:output:3Alstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0p
lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:―
lstm_28/strided_slice_3StridedSlice3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_28/strided_slice_3/stack:output:0(lstm_28/strided_slice_3/stack_1:output:0(lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskm
lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_28/transpose_1	Transpose3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????c
lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    €
/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ό
$batch_normalization_28/batchnorm/addAddV27batch_normalization_28/batchnorm/ReadVariableOp:value:0/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_28/batchnorm/RsqrtRsqrt(batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_28/batchnorm/mulMul*batch_normalization_28/batchnorm/Rsqrt:y:0;batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:¦
&batch_normalization_28/batchnorm/mul_1Mullstm_28/transpose_1:y:0(batch_normalization_28/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????¨
1batch_normalization_28/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_28_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_28/batchnorm/mul_2Mul9batch_normalization_28/batchnorm/ReadVariableOp_1:value:0(batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_28/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_28_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_28/batchnorm/subSub9batch_normalization_28/batchnorm/ReadVariableOp_2:value:0*batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:»
&batch_normalization_28/batchnorm/add_1AddV2*batch_normalization_28/batchnorm/mul_1:z:0(batch_normalization_28/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????g
lstm_29/ShapeShape*batch_normalization_28/batchnorm/add_1:z:0*
T0*
_output_shapes
:e
lstm_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
lstm_29/strided_sliceStridedSlicelstm_29/Shape:output:0$lstm_29/strided_slice/stack:output:0&lstm_29/strided_slice/stack_1:output:0&lstm_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_29/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_29/zeros/packedPacklstm_29/strided_slice:output:0lstm_29/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_29/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_29/zerosFilllstm_29/zeros/packed:output:0lstm_29/zeros/Const:output:0*
T0*'
_output_shapes
:?????????Z
lstm_29/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_29/zeros_1/packedPacklstm_29/strided_slice:output:0!lstm_29/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_29/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_29/zeros_1Filllstm_29/zeros_1/packed:output:0lstm_29/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????k
lstm_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ‘
lstm_29/transpose	Transpose*batch_normalization_28/batchnorm/add_1:z:0lstm_29/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_29/Shape_1Shapelstm_29/transpose:y:0*
T0*
_output_shapes
:g
lstm_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_29/strided_slice_1StridedSlicelstm_29/Shape_1:output:0&lstm_29/strided_slice_1/stack:output:0(lstm_29/strided_slice_1/stack_1:output:0(lstm_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_29/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Μ
lstm_29/TensorArrayV2TensorListReserve,lstm_29/TensorArrayV2/element_shape:output:0 lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
=lstm_29/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ψ
/lstm_29/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_29/transpose:y:0Flstm_29/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?g
lstm_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_29/strided_slice_2StridedSlicelstm_29/transpose:y:0&lstm_29/strided_slice_2/stack:output:0(lstm_29/strided_slice_2/stack_1:output:0(lstm_29/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
*lstm_29/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3lstm_29_lstm_cell_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0­
lstm_29/lstm_cell_29/MatMulMatMul lstm_29/strided_slice_2:output:02lstm_29/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ’
,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0§
lstm_29/lstm_cell_29/MatMul_1MatMullstm_29/zeros:output:04lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? £
lstm_29/lstm_cell_29/addAddV2%lstm_29/lstm_cell_29/MatMul:product:0'lstm_29/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
lstm_29/lstm_cell_29/BiasAddBiasAddlstm_29/lstm_cell_29/add:z:03lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? f
$lstm_29/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :υ
lstm_29/lstm_cell_29/splitSplit-lstm_29/lstm_cell_29/split/split_dim:output:0%lstm_29/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split~
lstm_29/lstm_cell_29/SigmoidSigmoid#lstm_29/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/Sigmoid_1Sigmoid#lstm_29/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/mulMul"lstm_29/lstm_cell_29/Sigmoid_1:y:0lstm_29/zeros_1:output:0*
T0*'
_output_shapes
:?????????x
lstm_29/lstm_cell_29/ReluRelu#lstm_29/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/mul_1Mul lstm_29/lstm_cell_29/Sigmoid:y:0'lstm_29/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/add_1AddV2lstm_29/lstm_cell_29/mul:z:0lstm_29/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????
lstm_29/lstm_cell_29/Sigmoid_2Sigmoid#lstm_29/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????u
lstm_29/lstm_cell_29/Relu_1Relulstm_29/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????’
lstm_29/lstm_cell_29/mul_2Mul"lstm_29/lstm_cell_29/Sigmoid_2:y:0)lstm_29/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????v
%lstm_29/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Π
lstm_29/TensorArrayV2_1TensorListReserve.lstm_29/TensorArrayV2_1/element_shape:output:0 lstm_29/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?N
lstm_29/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_29/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_29/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ς
lstm_29/whileWhile#lstm_29/while/loop_counter:output:0)lstm_29/while/maximum_iterations:output:0lstm_29/time:output:0 lstm_29/TensorArrayV2_1:handle:0lstm_29/zeros:output:0lstm_29/zeros_1:output:0 lstm_29/strided_slice_1:output:0?lstm_29/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_29_lstm_cell_29_matmul_readvariableop_resource5lstm_29_lstm_cell_29_matmul_1_readvariableop_resource4lstm_29_lstm_cell_29_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_29_while_body_195714*%
condR
lstm_29_while_cond_195713*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
8lstm_29/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ϊ
*lstm_29/TensorArrayV2Stack/TensorListStackTensorListStacklstm_29/while:output:3Alstm_29/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0p
lstm_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:―
lstm_29/strided_slice_3StridedSlice3lstm_29/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_29/strided_slice_3/stack:output:0(lstm_29/strided_slice_3/stack_1:output:0(lstm_29/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskm
lstm_29/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_29/transpose_1	Transpose3lstm_29/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_29/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????c
lstm_29/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    €
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ό
$batch_normalization_29/batchnorm/addAddV27batch_normalization_29/batchnorm/ReadVariableOp:value:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:«
&batch_normalization_29/batchnorm/mul_1Mul lstm_29/strided_slice_3:output:0(batch_normalization_29/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????¨
1batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_29/batchnorm/mul_2Mul9batch_normalization_29/batchnorm/ReadVariableOp_1:value:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_29/batchnorm/subSub9batch_normalization_29/batchnorm/ReadVariableOp_2:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_14/MatMulMatMul*batch_normalization_29/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:?????????έ
NoOpNoOp0^batch_normalization_28/batchnorm/ReadVariableOp2^batch_normalization_28/batchnorm/ReadVariableOp_12^batch_normalization_28/batchnorm/ReadVariableOp_24^batch_normalization_28/batchnorm/mul/ReadVariableOp0^batch_normalization_29/batchnorm/ReadVariableOp2^batch_normalization_29/batchnorm/ReadVariableOp_12^batch_normalization_29/batchnorm/ReadVariableOp_24^batch_normalization_29/batchnorm/mul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp,^lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+^lstm_28/lstm_cell_28/MatMul/ReadVariableOp-^lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_28/while,^lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp+^lstm_29/lstm_cell_29/MatMul/ReadVariableOp-^lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp^lstm_29/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2b
/batch_normalization_28/batchnorm/ReadVariableOp/batch_normalization_28/batchnorm/ReadVariableOp2f
1batch_normalization_28/batchnorm/ReadVariableOp_11batch_normalization_28/batchnorm/ReadVariableOp_12f
1batch_normalization_28/batchnorm/ReadVariableOp_21batch_normalization_28/batchnorm/ReadVariableOp_22j
3batch_normalization_28/batchnorm/mul/ReadVariableOp3batch_normalization_28/batchnorm/mul/ReadVariableOp2b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2f
1batch_normalization_29/batchnorm/ReadVariableOp_11batch_normalization_29/batchnorm/ReadVariableOp_12f
1batch_normalization_29/batchnorm/ReadVariableOp_21batch_normalization_29/batchnorm/ReadVariableOp_22j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2Z
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2X
*lstm_28/lstm_cell_28/MatMul/ReadVariableOp*lstm_28/lstm_cell_28/MatMul/ReadVariableOp2\
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2
lstm_28/whilelstm_28/while2Z
+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp+lstm_29/lstm_cell_29/BiasAdd/ReadVariableOp2X
*lstm_29/lstm_cell_29/MatMul/ReadVariableOp*lstm_29/lstm_cell_29/MatMul/ReadVariableOp2\
,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp,lstm_29/lstm_cell_29/MatMul_1/ReadVariableOp2
lstm_29/whilelstm_29/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
8
Κ
while_body_197437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_29_matmul_readvariableop_resource_0: G
5while_lstm_cell_29_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_29_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_29_matmul_readvariableop_resource: E
3while_lstm_cell_29_matmul_1_readvariableop_resource: @
2while_lstm_cell_29_biasadd_readvariableop_resource: ’)while/lstm_cell_29/BiasAdd/ReadVariableOp’(while/lstm_cell_29/MatMul/ReadVariableOp’*while/lstm_cell_29/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_29/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_29_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_29/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_29/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_29_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_29/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_29/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_29/addAddV2#while/lstm_cell_29/MatMul:product:0%while/lstm_cell_29/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_29/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_29_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_29/BiasAddBiasAddwhile/lstm_cell_29/add:z:01while/lstm_cell_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_29/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_29/splitSplit+while/lstm_cell_29/split/split_dim:output:0#while/lstm_cell_29/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_29/SigmoidSigmoid!while/lstm_cell_29/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_1Sigmoid!while/lstm_cell_29/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mulMul while/lstm_cell_29/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_29/ReluRelu!while/lstm_cell_29/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_1Mulwhile/lstm_cell_29/Sigmoid:y:0%while/lstm_cell_29/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/add_1AddV2while/lstm_cell_29/mul:z:0while/lstm_cell_29/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_29/Sigmoid_2Sigmoid!while/lstm_cell_29/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_29/Relu_1Reluwhile/lstm_cell_29/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_29/mul_2Mul while/lstm_cell_29/Sigmoid_2:y:0'while/lstm_cell_29/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_29/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_29/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_29/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_29/BiasAdd/ReadVariableOp)^while/lstm_cell_29/MatMul/ReadVariableOp+^while/lstm_cell_29/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_29_biasadd_readvariableop_resource4while_lstm_cell_29_biasadd_readvariableop_resource_0"l
3while_lstm_cell_29_matmul_1_readvariableop_resource5while_lstm_cell_29_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_29_matmul_readvariableop_resource3while_lstm_cell_29_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_29/BiasAdd/ReadVariableOp)while/lstm_cell_29/BiasAdd/ReadVariableOp2T
(while/lstm_cell_29/MatMul/ReadVariableOp(while/lstm_cell_29/MatMul/ReadVariableOp2X
*while/lstm_cell_29/MatMul_1/ReadVariableOp*while/lstm_cell_29/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
Ό!
¦
I__inference_sequential_14_layer_call_and_return_conditional_losses_195377
lstm_28_input 
lstm_28_195339:  
lstm_28_195341: 
lstm_28_195343: +
batch_normalization_28_195346:+
batch_normalization_28_195348:+
batch_normalization_28_195350:+
batch_normalization_28_195352: 
lstm_29_195355:  
lstm_29_195357: 
lstm_29_195359: +
batch_normalization_29_195362:+
batch_normalization_29_195364:+
batch_normalization_29_195366:+
batch_normalization_29_195368:!
dense_14_195371:
dense_14_195373:
identity’.batch_normalization_28/StatefulPartitionedCall’.batch_normalization_29/StatefulPartitionedCall’ dense_14/StatefulPartitionedCall’lstm_28/StatefulPartitionedCall’lstm_29/StatefulPartitionedCall
lstm_28/StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputlstm_28_195339lstm_28_195341lstm_28_195343*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_28_layer_call_and_return_conditional_losses_194615
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0batch_normalization_28_195346batch_normalization_28_195348batch_normalization_28_195350batch_normalization_28_195352*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_193976―
lstm_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0lstm_29_195355lstm_29_195357lstm_29_195359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_194774
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_29/StatefulPartitionedCall:output:0batch_normalization_29_195362batch_normalization_29_195364batch_normalization_29_195366batch_normalization_29_195368*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194408‘
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0dense_14_195371dense_14_195373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_194802x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall ^lstm_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall2B
lstm_29/StatefulPartitionedCalllstm_29/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input
΅
Γ
while_cond_193682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_193682___redundant_placeholder04
0while_while_cond_193682___redundant_placeholder14
0while_while_cond_193682___redundant_placeholder24
0while_while_cond_193682___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
΅
Γ
while_cond_194114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_194114___redundant_placeholder04
0while_while_cond_194114___redundant_placeholder14
0while_while_cond_194114___redundant_placeholder24
0while_while_cond_194114___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:

΄
(__inference_lstm_29_layer_call_fn_196927
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallη
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_194375o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
θ
σ
-__inference_lstm_cell_28_layer_call_fn_197638

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2’StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193669o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
΅
Γ
while_cond_197007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_197007___redundant_placeholder04
0while_while_cond_197007___redundant_placeholder14
0while_while_cond_197007___redundant_placeholder24
0while_while_cond_197007___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:


.__inference_sequential_14_layer_call_fn_195500

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_195264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs


$__inference_signature_wrapper_196209
lstm_28_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:
identity’StatefulPartitionedCallψ
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_193602o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_28_input
%
λ
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_194455

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

±
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_193976

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
σ"
έ
while_body_194115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_29_194139_0: -
while_lstm_cell_29_194141_0: )
while_lstm_cell_29_194143_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_29_194139: +
while_lstm_cell_29_194141: '
while_lstm_cell_29_194143: ’*while/lstm_cell_29/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0³
*while/lstm_cell_29/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_29_194139_0while_lstm_cell_29_194141_0while_lstm_cell_29_194143_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_194101ά
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_29/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity3while/lstm_cell_29/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
while/Identity_5Identity3while/lstm_cell_29/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????y

while/NoOpNoOp+^while/lstm_cell_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_29_194139while_lstm_cell_29_194139_0"8
while_lstm_cell_29_194141while_lstm_cell_29_194141_0"8
while_lstm_cell_29_194143while_lstm_cell_29_194143_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_29/StatefulPartitionedCall*while/lstm_cell_29/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
΅
Γ
while_cond_196454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_196454___redundant_placeholder04
0while_while_cond_196454___redundant_placeholder14
0while_while_cond_196454___redundant_placeholder24
0while_while_cond_196454___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
τ
²
(__inference_lstm_29_layer_call_fn_196949

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_29_layer_call_and_return_conditional_losses_195010o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
J

C__inference_lstm_28_layer_call_and_return_conditional_losses_196682

inputs=
+lstm_cell_28_matmul_readvariableop_resource: ?
-lstm_cell_28_matmul_1_readvariableop_resource: :
,lstm_cell_28_biasadd_readvariableop_resource: 
identity’#lstm_cell_28/BiasAdd/ReadVariableOp’"lstm_cell_28/MatMul/ReadVariableOp’$lstm_cell_28/MatMul_1/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ^
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :έ
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitn
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????w
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????h
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????{
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????p
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????e
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_196598*
condR
while_cond_196597*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????ΐ
NoOpNoOp$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
8
Κ
while_body_195091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_28_matmul_readvariableop_resource_0: G
5while_lstm_cell_28_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_28_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_28_matmul_readvariableop_resource: E
3while_lstm_cell_28_matmul_1_readvariableop_resource: @
2while_lstm_cell_28_biasadd_readvariableop_resource: ’)while/lstm_cell_28/BiasAdd/ReadVariableOp’(while/lstm_cell_28/MatMul/ReadVariableOp’*while/lstm_cell_28/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Ή
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0 
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:????????? 
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¦
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ο
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitz
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????t
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*'
_output_shapes
:?????????|
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*'
_output_shapes
:?????????q
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*'
_output_shapes
:?????????
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*'
_output_shapes
:?????????Ε
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?y
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????y
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????Π

while/NoOpNoOp*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
ώ%
λ
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_194023

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ’
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :??????????????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
%
λ
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197601

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *  @?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
σ"
έ
while_body_193874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_28_193898_0: -
while_lstm_cell_28_193900_0: )
while_lstm_cell_28_193902_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_28_193898: +
while_lstm_cell_28_193900: '
while_lstm_cell_28_193902: ’*while/lstm_cell_28/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0³
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_193898_0while_lstm_cell_28_193900_0while_lstm_cell_28_193902_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_193815ά
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????y

while/NoOpNoOp+^while/lstm_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_28_193898while_lstm_cell_28_193898_0"8
while_lstm_cell_28_193900while_lstm_cell_28_193900_0"8
while_lstm_cell_28_193902while_lstm_cell_28_193902_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
Σ

H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197817

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ά
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_28_input:
serving_default_lstm_28_input:0?????????<
dense_140
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ΥΘ
©
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ϊ
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
κ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
Ϊ
#cell
$
state_spec
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)_random_generator
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
κ
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
»

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
Υ
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_rate
Dweight_decaymm-m.m7m8mEmFmGmHmImJmvv-v.v 7v‘8v’Ev£Fv€Gv₯Hv¦Iv§Jv¨"
	optimizer

E0
F1
G2
3
4
5
6
H7
I8
J9
-10
.11
/12
013
714
815"
trackable_list_wrapper
v
E0
F1
G2
3
4
H5
I6
J7
-8
.9
710
811"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_14_layer_call_fn_194844
.__inference_sequential_14_layer_call_fn_195463
.__inference_sequential_14_layer_call_fn_195500
.__inference_sequential_14_layer_call_fn_195336ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ς2ο
I__inference_sequential_14_layer_call_and_return_conditional_losses_195821
I__inference_sequential_14_layer_call_and_return_conditional_losses_196170
I__inference_sequential_14_layer_call_and_return_conditional_losses_195377
I__inference_sequential_14_layer_call_and_return_conditional_losses_195418ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?BΟ
!__inference__wrapped_model_193602lstm_28_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
Pserving_default"
signature_map
ψ
Q
state_size

Ekernel
Frecurrent_kernel
Gbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V_random_generator
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_28_layer_call_fn_196220
(__inference_lstm_28_layer_call_fn_196231
(__inference_lstm_28_layer_call_fn_196242
(__inference_lstm_28_layer_call_fn_196253Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ο2μ
C__inference_lstm_28_layer_call_and_return_conditional_losses_196396
C__inference_lstm_28_layer_call_and_return_conditional_losses_196539
C__inference_lstm_28_layer_call_and_return_conditional_losses_196682
C__inference_lstm_28_layer_call_and_return_conditional_losses_196825Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
*:(2batch_normalization_28/gamma
):'2batch_normalization_28/beta
2:0 (2"batch_normalization_28/moving_mean
6:4 (2&batch_normalization_28/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_28_layer_call_fn_196838
7__inference_batch_normalization_28_layer_call_fn_196851΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
β2ί
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196871
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196905΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ψ
d
state_size

Hkernel
Irecurrent_kernel
Jbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
%	variables
&trainable_variables
'regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_29_layer_call_fn_196916
(__inference_lstm_29_layer_call_fn_196927
(__inference_lstm_29_layer_call_fn_196938
(__inference_lstm_29_layer_call_fn_196949Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ο2μ
C__inference_lstm_29_layer_call_and_return_conditional_losses_197092
C__inference_lstm_29_layer_call_and_return_conditional_losses_197235
C__inference_lstm_29_layer_call_and_return_conditional_losses_197378
C__inference_lstm_29_layer_call_and_return_conditional_losses_197521Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
*:(2batch_normalization_29/gamma
):'2batch_normalization_29/beta
2:0 (2"batch_normalization_29/moving_mean
6:4 (2&batch_normalization_29/moving_variance
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_29_layer_call_fn_197534
7__inference_batch_normalization_29_layer_call_fn_197547΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
β2ί
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197567
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197601΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
!:2dense_14/kernel
:2dense_14/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_dense_14_layer_call_fn_197610’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_dense_14_layer_call_and_return_conditional_losses_197621’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2
AdamW/iter
: (2AdamW/beta_1
: (2AdamW/beta_2
: (2AdamW/decay
: (2AdamW/learning_rate
: (2AdamW/weight_decay
-:+ 2lstm_28/lstm_cell_28/kernel
7:5 2%lstm_28/lstm_cell_28/recurrent_kernel
':% 2lstm_28/lstm_cell_28/bias
-:+ 2lstm_29/lstm_cell_29/kernel
7:5 2%lstm_29/lstm_cell_29/recurrent_kernel
':% 2lstm_29/lstm_cell_29/bias
<
0
1
/2
03"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΡBΞ
$__inference_signature_wrapper_196209lstm_28_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
’2
-__inference_lstm_cell_28_layer_call_fn_197638
-__inference_lstm_cell_28_layer_call_fn_197655Ύ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ψ2Υ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197687
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197719Ύ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
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
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
’2
-__inference_lstm_cell_29_layer_call_fn_197736
-__inference_lstm_cell_29_layer_call_fn_197753Ύ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ψ2Υ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197785
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197817Ύ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
0:.2$AdamW/batch_normalization_28/gamma/m
/:-2#AdamW/batch_normalization_28/beta/m
0:.2$AdamW/batch_normalization_29/gamma/m
/:-2#AdamW/batch_normalization_29/beta/m
':%2AdamW/dense_14/kernel/m
!:2AdamW/dense_14/bias/m
3:1 2#AdamW/lstm_28/lstm_cell_28/kernel/m
=:; 2-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/m
-:+ 2!AdamW/lstm_28/lstm_cell_28/bias/m
3:1 2#AdamW/lstm_29/lstm_cell_29/kernel/m
=:; 2-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/m
-:+ 2!AdamW/lstm_29/lstm_cell_29/bias/m
0:.2$AdamW/batch_normalization_28/gamma/v
/:-2#AdamW/batch_normalization_28/beta/v
0:.2$AdamW/batch_normalization_29/gamma/v
/:-2#AdamW/batch_normalization_29/beta/v
':%2AdamW/dense_14/kernel/v
!:2AdamW/dense_14/bias/v
3:1 2#AdamW/lstm_28/lstm_cell_28/kernel/v
=:; 2-AdamW/lstm_28/lstm_cell_28/recurrent_kernel/v
-:+ 2!AdamW/lstm_28/lstm_cell_28/bias/v
3:1 2#AdamW/lstm_29/lstm_cell_29/kernel/v
=:; 2-AdamW/lstm_29/lstm_cell_29/recurrent_kernel/v
-:+ 2!AdamW/lstm_29/lstm_cell_29/bias/v©
!__inference__wrapped_model_193602EFGHIJ0-/.78:’7
0’-
+(
lstm_28_input?????????
ͺ "3ͺ0
.
dense_14"
dense_14??????????
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196871|@’=
6’3
-*
inputs??????????????????
p 
ͺ "2’/
(%
0??????????????????
 ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_196905|@’=
6’3
-*
inputs??????????????????
p
ͺ "2’/
(%
0??????????????????
 ͺ
7__inference_batch_normalization_28_layer_call_fn_196838o@’=
6’3
-*
inputs??????????????????
p 
ͺ "%"??????????????????ͺ
7__inference_batch_normalization_28_layer_call_fn_196851o@’=
6’3
-*
inputs??????????????????
p
ͺ "%"??????????????????Έ
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197567b0-/.3’0
)’&
 
inputs?????????
p 
ͺ "%’"

0?????????
 Έ
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_197601b/0-.3’0
)’&
 
inputs?????????
p
ͺ "%’"

0?????????
 
7__inference_batch_normalization_29_layer_call_fn_197534U0-/.3’0
)’&
 
inputs?????????
p 
ͺ "?????????
7__inference_batch_normalization_29_layer_call_fn_197547U/0-.3’0
)’&
 
inputs?????????
p
ͺ "?????????€
D__inference_dense_14_layer_call_and_return_conditional_losses_197621\78/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 |
)__inference_dense_14_layer_call_fn_197610O78/’,
%’"
 
inputs?????????
ͺ "??????????
C__inference_lstm_28_layer_call_and_return_conditional_losses_196396EFGO’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "2’/
(%
0??????????????????
 ?
C__inference_lstm_28_layer_call_and_return_conditional_losses_196539EFGO’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "2’/
(%
0??????????????????
 Έ
C__inference_lstm_28_layer_call_and_return_conditional_losses_196682qEFG?’<
5’2
$!
inputs?????????

 
p 

 
ͺ ")’&

0?????????
 Έ
C__inference_lstm_28_layer_call_and_return_conditional_losses_196825qEFG?’<
5’2
$!
inputs?????????

 
p

 
ͺ ")’&

0?????????
 ©
(__inference_lstm_28_layer_call_fn_196220}EFGO’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "%"??????????????????©
(__inference_lstm_28_layer_call_fn_196231}EFGO’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "%"??????????????????
(__inference_lstm_28_layer_call_fn_196242dEFG?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "?????????
(__inference_lstm_28_layer_call_fn_196253dEFG?’<
5’2
$!
inputs?????????

 
p

 
ͺ "?????????Δ
C__inference_lstm_29_layer_call_and_return_conditional_losses_197092}HIJO’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "%’"

0?????????
 Δ
C__inference_lstm_29_layer_call_and_return_conditional_losses_197235}HIJO’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "%’"

0?????????
 ΄
C__inference_lstm_29_layer_call_and_return_conditional_losses_197378mHIJ?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "%’"

0?????????
 ΄
C__inference_lstm_29_layer_call_and_return_conditional_losses_197521mHIJ?’<
5’2
$!
inputs?????????

 
p

 
ͺ "%’"

0?????????
 
(__inference_lstm_29_layer_call_fn_196916pHIJO’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "?????????
(__inference_lstm_29_layer_call_fn_196927pHIJO’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "?????????
(__inference_lstm_29_layer_call_fn_196938`HIJ?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "?????????
(__inference_lstm_29_layer_call_fn_196949`HIJ?’<
5’2
$!
inputs?????????

 
p

 
ͺ "?????????Κ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197687ύEFG’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p 
ͺ "s’p
i’f

0/0?????????
EB

0/1/0?????????

0/1/1?????????
 Κ
H__inference_lstm_cell_28_layer_call_and_return_conditional_losses_197719ύEFG’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p
ͺ "s’p
i’f

0/0?????????
EB

0/1/0?????????

0/1/1?????????
 
-__inference_lstm_cell_28_layer_call_fn_197638νEFG’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p 
ͺ "c’`

0?????????
A>

1/0?????????

1/1?????????
-__inference_lstm_cell_28_layer_call_fn_197655νEFG’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p
ͺ "c’`

0?????????
A>

1/0?????????

1/1?????????Κ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197785ύHIJ’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p 
ͺ "s’p
i’f

0/0?????????
EB

0/1/0?????????

0/1/1?????????
 Κ
H__inference_lstm_cell_29_layer_call_and_return_conditional_losses_197817ύHIJ’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p
ͺ "s’p
i’f

0/0?????????
EB

0/1/0?????????

0/1/1?????????
 
-__inference_lstm_cell_29_layer_call_fn_197736νHIJ’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p 
ͺ "c’`

0?????????
A>

1/0?????????

1/1?????????
-__inference_lstm_cell_29_layer_call_fn_197753νHIJ’}
v’s
 
inputs?????????
K’H
"
states/0?????????
"
states/1?????????
p
ͺ "c’`

0?????????
A>

1/0?????????

1/1?????????Κ
I__inference_sequential_14_layer_call_and_return_conditional_losses_195377}EFGHIJ0-/.78B’?
8’5
+(
lstm_28_input?????????
p 

 
ͺ "%’"

0?????????
 Κ
I__inference_sequential_14_layer_call_and_return_conditional_losses_195418}EFGHIJ/0-.78B’?
8’5
+(
lstm_28_input?????????
p

 
ͺ "%’"

0?????????
 Γ
I__inference_sequential_14_layer_call_and_return_conditional_losses_195821vEFGHIJ0-/.78;’8
1’.
$!
inputs?????????
p 

 
ͺ "%’"

0?????????
 Γ
I__inference_sequential_14_layer_call_and_return_conditional_losses_196170vEFGHIJ/0-.78;’8
1’.
$!
inputs?????????
p

 
ͺ "%’"

0?????????
 ’
.__inference_sequential_14_layer_call_fn_194844pEFGHIJ0-/.78B’?
8’5
+(
lstm_28_input?????????
p 

 
ͺ "?????????’
.__inference_sequential_14_layer_call_fn_195336pEFGHIJ/0-.78B’?
8’5
+(
lstm_28_input?????????
p

 
ͺ "?????????
.__inference_sequential_14_layer_call_fn_195463iEFGHIJ0-/.78;’8
1’.
$!
inputs?????????
p 

 
ͺ "?????????
.__inference_sequential_14_layer_call_fn_195500iEFGHIJ/0-.78;’8
1’.
$!
inputs?????????
p

 
ͺ "?????????½
$__inference_signature_wrapper_196209EFGHIJ0-/.78K’H
’ 
Aͺ>
<
lstm_28_input+(
lstm_28_input?????????"3ͺ0
.
dense_14"
dense_14?????????