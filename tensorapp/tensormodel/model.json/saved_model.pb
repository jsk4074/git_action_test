ё§
ді
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
Й
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
executor_typestring ѕ
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.6.02unknown8ел
ѓ
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
ѓ
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
{
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђЫђ*
shared_namedense_2/kernel
t
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_output_shapes
:ђЫђ*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:ђ*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђi*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	ђi*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:i*
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
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
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
љ
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m
Ѕ
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/m
Ѕ
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
: *
dtype0
ђ
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
: *
dtype0
љ
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/m
Ѕ
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
: @*
dtype0
ђ
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђЫђ*&
shared_nameAdam/dense_2/kernel/m
ѓ
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*!
_output_shapes
:ђЫђ*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђi*&
shared_nameAdam/dense_3/kernel/m
ђ
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	ђi*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:i*
dtype0
љ
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v
Ѕ
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/v
Ѕ
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
: *
dtype0
ђ
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
: *
dtype0
љ
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/v
Ѕ
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
: @*
dtype0
ђ
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђЫђ*&
shared_nameAdam/dense_2/kernel/v
ѓ
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*!
_output_shapes
:ђЫђ*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђi*&
shared_nameAdam/dense_3/kernel/v
ђ
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	ђi*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:i*
dtype0

NoOpNoOp
фQ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*тP
value█PBпP BЛP
Љ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
y
layer-0
layer-1
layer-2
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
R
$regularization_losses
%trainable_variables
&	variables
'	keras_api
h

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
R
.regularization_losses
/trainable_variables
0	variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
R
8regularization_losses
9trainable_variables
:	variables
;	keras_api
R
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
h

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
ѕ
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem┬m├(m─)m┼2mк3mКDm╚Em╔Jm╩Km╦v╠v═(v╬)v¤2vл3vЛDvмEvМJvнKvН
 
F
0
1
(2
)3
24
35
D6
E7
J8
K9
F
0
1
(2
)3
24
35
D6
E7
J8
K9
Г
Umetrics
regularization_losses
Vnon_trainable_variables
Wlayer_metrics
trainable_variables
	variables

Xlayers
Ylayer_regularization_losses
 
\
Z_rng
[regularization_losses
\trainable_variables
]	variables
^	keras_api
\
__rng
`regularization_losses
atrainable_variables
b	variables
c	keras_api
\
d_rng
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
 
 
 
Г
imetrics
regularization_losses
jnon_trainable_variables
klayer_metrics
trainable_variables
	variables

llayers
mlayer_regularization_losses
 
 
 
Г
nmetrics
regularization_losses
onon_trainable_variables
player_metrics
trainable_variables
	variables

qlayers
rlayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Г
smetrics
 regularization_losses
tnon_trainable_variables
ulayer_metrics
!trainable_variables
"	variables

vlayers
wlayer_regularization_losses
 
 
 
Г
xmetrics
$regularization_losses
ynon_trainable_variables
zlayer_metrics
%trainable_variables
&	variables

{layers
|layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
»
}metrics
*regularization_losses
~non_trainable_variables
layer_metrics
+trainable_variables
,	variables
ђlayers
 Ђlayer_regularization_losses
 
 
 
▓
ѓmetrics
.regularization_losses
Ѓnon_trainable_variables
ёlayer_metrics
/trainable_variables
0	variables
Ёlayers
 єlayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
▓
Єmetrics
4regularization_losses
ѕnon_trainable_variables
Ѕlayer_metrics
5trainable_variables
6	variables
іlayers
 Іlayer_regularization_losses
 
 
 
▓
їmetrics
8regularization_losses
Їnon_trainable_variables
јlayer_metrics
9trainable_variables
:	variables
Јlayers
 љlayer_regularization_losses
 
 
 
▓
Љmetrics
<regularization_losses
њnon_trainable_variables
Њlayer_metrics
=trainable_variables
>	variables
ћlayers
 Ћlayer_regularization_losses
 
 
 
▓
ќmetrics
@regularization_losses
Ќnon_trainable_variables
ўlayer_metrics
Atrainable_variables
B	variables
Ўlayers
 џlayer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
▓
Џmetrics
Fregularization_losses
юnon_trainable_variables
Юlayer_metrics
Gtrainable_variables
H	variables
ъlayers
 Ъlayer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
▓
аmetrics
Lregularization_losses
Аnon_trainable_variables
бlayer_metrics
Mtrainable_variables
N	variables
Бlayers
 цlayer_regularization_losses
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

Ц0
д1
 
 
V
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
 

Д
_state_var
 
 
 
▓
еmetrics
[regularization_losses
Еnon_trainable_variables
фlayer_metrics
\trainable_variables
]	variables
Фlayers
 гlayer_regularization_losses

Г
_state_var
 
 
 
▓
«metrics
`regularization_losses
»non_trainable_variables
░layer_metrics
atrainable_variables
b	variables
▒layers
 ▓layer_regularization_losses

│
_state_var
 
 
 
▓
┤metrics
eregularization_losses
хnon_trainable_variables
Хlayer_metrics
ftrainable_variables
g	variables
иlayers
 Иlayer_regularization_losses
 
 
 

0
1
2
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
 
 
 
 
 
 
8

╣total

║count
╗	variables
╝	keras_api
I

йtotal

Йcount
┐
_fn_kwargs
└	variables
┴	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

╣0
║1

╗	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

й0
Й1

└	variables
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ў
"serving_default_sequential_2_inputPlaceholder*1
_output_shapes
:         ┤┤*
dtype0*&
shape:         ┤┤
­
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_2_inputconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_760156
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_761571
ф
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_761707▓њ
Ю
ъ
)__inference_conv2d_4_layer_call_fn_760933

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_7597092
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ZZ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ZZ
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_759622

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_759196

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ѓ8
и
H__inference_sequential_3_layer_call_and_return_conditional_losses_760123
sequential_2_input!
sequential_2_760084:	!
sequential_2_760086:	!
sequential_2_760088:	)
conv2d_3_760092:
conv2d_3_760094:)
conv2d_4_760098: 
conv2d_4_760100: )
conv2d_5_760104: @
conv2d_5_760106:@#
dense_2_760112:ђЫђ
dense_2_760114:	ђ!
dense_3_760117:	ђi
dense_3_760119:i
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallб$sequential_2/StatefulPartitionedCallМ
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputsequential_2_760084sequential_2_760086sequential_2_760088*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7595512&
$sequential_2/StatefulPartitionedCallЉ
rescaling_2/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_7596732
rescaling_2/PartitionedCall┐
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0conv2d_3_760092conv2d_3_760094*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_7596862"
 conv2d_3/StatefulPartitionedCallЌ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596962!
max_pooling2d_3/PartitionedCall┴
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_760098conv2d_4_760100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_7597092"
 conv2d_4/StatefulPartitionedCallЌ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         -- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7597192!
max_pooling2d_4/PartitionedCall┴
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_760104conv2d_5_760106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         --@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_7597322"
 conv2d_5/StatefulPartitionedCallЌ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7597422!
max_pooling2d_5/PartitionedCallю
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7598622#
!dropout_1/StatefulPartitionedCallђ
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђЫ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_7597572
flatten_1/PartitionedCall»
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_760112dense_2_760114*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7597702!
dense_2/StatefulPartitionedCall┤
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_760117dense_3_760119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7597862!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityк
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         ┤┤: : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
№
I
-__inference_sequential_2_layer_call_fn_760586

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7592112
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ы
J
.__inference_random_flip_1_layer_call_fn_761086

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7591962
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
┬
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_759696

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         ZZ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Д
i
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_759202

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
┴3
э
H__inference_sequential_3_layer_call_and_return_conditional_losses_759793

inputs)
conv2d_3_759687:
conv2d_3_759689:)
conv2d_4_759710: 
conv2d_4_759712: )
conv2d_5_759733: @
conv2d_5_759735:@#
dense_2_759771:ђЫђ
dense_2_759773:	ђ!
dense_3_759787:	ђi
dense_3_759789:i
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallь
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7592112
sequential_2/PartitionedCallЅ
rescaling_2/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_7596732
rescaling_2/PartitionedCall┐
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0conv2d_3_759687conv2d_3_759689*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_7596862"
 conv2d_3/StatefulPartitionedCallЌ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596962!
max_pooling2d_3/PartitionedCall┴
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_759710conv2d_4_759712*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_7597092"
 conv2d_4/StatefulPartitionedCallЌ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         -- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7597192!
max_pooling2d_4/PartitionedCall┴
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_759733conv2d_5_759735*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         --@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_7597322"
 conv2d_5/StatefulPartitionedCallЌ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7597422!
max_pooling2d_5/PartitionedCallё
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7597492
dropout_1/PartitionedCallЭ
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђЫ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_7597572
flatten_1/PartitionedCall»
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_759771dense_2_759773*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7597702!
dense_2/StatefulPartitionedCall┤
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_759787dense_3_759789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7597862!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ш
ќ
(__inference_dense_3_layer_call_fn_761071

inputs
unknown:	ђi
	unknown_0:i
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7597862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
█Џ
к
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_759455

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЂ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2
strided_slice_1/stackЁ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2В
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_2/stackЁ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2В
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ┐2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЎ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xі
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1┘
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipќ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackџ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1џ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2╬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЎ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcastџ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackъ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1ъ
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2к
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Ъ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1а
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algИ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2+
)stateful_uniform/StatelessRandomUniformV2њ
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub»
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2
stateful_uniform/mulћ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_1/yё
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1Њ
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_2/yѓ
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2Ќ
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_1Ќ
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_3Ќ
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/yф
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_5/yѓ
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_6/yё
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6Ў
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_7/yѓ
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7Ў
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_3Ќ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/addЌ
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y░
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/Shapeћ
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stackў
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1ў
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2┬
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_2Ъ
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stackБ
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1Б
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2э
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_2Ъ
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stackБ
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1Б
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2э
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2Ї
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2
rotation_matrix/NegЪ
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stackБ
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1Б
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2щ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_3Ъ
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stackБ
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1Б
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2э
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_3Ъ
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stackБ
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1Б
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2э
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5Ъ
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stackБ
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1Б
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2ч
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6ѓ
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1├
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constх
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axisе
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shapeѕ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackї
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1ї
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2і
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value╔
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3ъ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
э
~
.__inference_random_zoom_1_layer_call_fn_761301

inputs
unknown:	
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7593242
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Б
e
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_759208

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ю
ъ
)__inference_conv2d_5_layer_call_fn_760973

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         --@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_7597322
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         --@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         -- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         -- 
 
_user_specified_nameinputs
Б
e
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761097

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ИO
з	
!__inference__wrapped_model_759185
sequential_2_inputN
4sequential_3_conv2d_3_conv2d_readvariableop_resource:C
5sequential_3_conv2d_3_biasadd_readvariableop_resource:N
4sequential_3_conv2d_4_conv2d_readvariableop_resource: C
5sequential_3_conv2d_4_biasadd_readvariableop_resource: N
4sequential_3_conv2d_5_conv2d_readvariableop_resource: @C
5sequential_3_conv2d_5_biasadd_readvariableop_resource:@H
3sequential_3_dense_2_matmul_readvariableop_resource:ђЫђC
4sequential_3_dense_2_biasadd_readvariableop_resource:	ђF
3sequential_3_dense_3_matmul_readvariableop_resource:	ђiB
4sequential_3_dense_3_biasadd_readvariableop_resource:i
identityѕб,sequential_3/conv2d_3/BiasAdd/ReadVariableOpб+sequential_3/conv2d_3/Conv2D/ReadVariableOpб,sequential_3/conv2d_4/BiasAdd/ReadVariableOpб+sequential_3/conv2d_4/Conv2D/ReadVariableOpб,sequential_3/conv2d_5/BiasAdd/ReadVariableOpб+sequential_3/conv2d_5/Conv2D/ReadVariableOpб+sequential_3/dense_2/BiasAdd/ReadVariableOpб*sequential_3/dense_2/MatMul/ReadVariableOpб+sequential_3/dense_3/BiasAdd/ReadVariableOpб*sequential_3/dense_3/MatMul/ReadVariableOpЄ
sequential_3/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2!
sequential_3/rescaling_2/Cast/xІ
!sequential_3/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/rescaling_2/Cast_1/xй
sequential_3/rescaling_2/mulMulsequential_2_input(sequential_3/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
sequential_3/rescaling_2/mul¤
sequential_3/rescaling_2/addAddV2 sequential_3/rescaling_2/mul:z:0*sequential_3/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
sequential_3/rescaling_2/addО
+sequential_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_3/conv2d_3/Conv2D/ReadVariableOpЂ
sequential_3/conv2d_3/Conv2DConv2D sequential_3/rescaling_2/add:z:03sequential_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤*
paddingSAME*
strides
2
sequential_3/conv2d_3/Conv2D╬
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpР
sequential_3/conv2d_3/BiasAddBiasAdd%sequential_3/conv2d_3/Conv2D:output:04sequential_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤2
sequential_3/conv2d_3/BiasAddц
sequential_3/conv2d_3/ReluRelu&sequential_3/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:         ┤┤2
sequential_3/conv2d_3/ReluЬ
$sequential_3/max_pooling2d_3/MaxPoolMaxPool(sequential_3/conv2d_3/Relu:activations:0*/
_output_shapes
:         ZZ*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_3/MaxPoolО
+sequential_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_3/conv2d_4/Conv2D/ReadVariableOpї
sequential_3/conv2d_4/Conv2DConv2D-sequential_3/max_pooling2d_3/MaxPool:output:03sequential_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ *
paddingSAME*
strides
2
sequential_3/conv2d_4/Conv2D╬
,sequential_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/conv2d_4/BiasAdd/ReadVariableOpЯ
sequential_3/conv2d_4/BiasAddBiasAdd%sequential_3/conv2d_4/Conv2D:output:04sequential_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ 2
sequential_3/conv2d_4/BiasAddб
sequential_3/conv2d_4/ReluRelu&sequential_3/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         ZZ 2
sequential_3/conv2d_4/ReluЬ
$sequential_3/max_pooling2d_4/MaxPoolMaxPool(sequential_3/conv2d_4/Relu:activations:0*/
_output_shapes
:         -- *
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_4/MaxPoolО
+sequential_3/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_5/Conv2D/ReadVariableOpї
sequential_3/conv2d_5/Conv2DConv2D-sequential_3/max_pooling2d_4/MaxPool:output:03sequential_3/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@*
paddingSAME*
strides
2
sequential_3/conv2d_5/Conv2D╬
,sequential_3/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/conv2d_5/BiasAdd/ReadVariableOpЯ
sequential_3/conv2d_5/BiasAddBiasAdd%sequential_3/conv2d_5/Conv2D:output:04sequential_3/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@2
sequential_3/conv2d_5/BiasAddб
sequential_3/conv2d_5/ReluRelu&sequential_3/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         --@2
sequential_3/conv2d_5/ReluЬ
$sequential_3/max_pooling2d_5/MaxPoolMaxPool(sequential_3/conv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_5/MaxPoolи
sequential_3/dropout_1/IdentityIdentity-sequential_3/max_pooling2d_5/MaxPool:output:0*
T0*/
_output_shapes
:         @2!
sequential_3/dropout_1/IdentityЇ
sequential_3/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     y  2
sequential_3/flatten_1/Constл
sequential_3/flatten_1/ReshapeReshape(sequential_3/dropout_1/Identity:output:0%sequential_3/flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђЫ2 
sequential_3/flatten_1/Reshape¤
*sequential_3/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_2_matmul_readvariableop_resource*!
_output_shapes
:ђЫђ*
dtype02,
*sequential_3/dense_2/MatMul/ReadVariableOpн
sequential_3/dense_2/MatMulMatMul'sequential_3/flatten_1/Reshape:output:02sequential_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_3/dense_2/MatMul╠
+sequential_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02-
+sequential_3/dense_2/BiasAdd/ReadVariableOpо
sequential_3/dense_2/BiasAddBiasAdd%sequential_3/dense_2/MatMul:product:03sequential_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
sequential_3/dense_2/BiasAddў
sequential_3/dense_2/ReluRelu%sequential_3/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
sequential_3/dense_2/Relu═
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђi*
dtype02,
*sequential_3/dense_3/MatMul/ReadVariableOpМ
sequential_3/dense_3/MatMulMatMul'sequential_3/dense_2/Relu:activations:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
sequential_3/dense_3/MatMul╦
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02-
+sequential_3/dense_3/BiasAdd/ReadVariableOpН
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
sequential_3/dense_3/BiasAddђ
IdentityIdentity%sequential_3/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         i2

IdentityЏ
NoOpNoOp-^sequential_3/conv2d_3/BiasAdd/ReadVariableOp,^sequential_3/conv2d_3/Conv2D/ReadVariableOp-^sequential_3/conv2d_4/BiasAdd/ReadVariableOp,^sequential_3/conv2d_4/Conv2D/ReadVariableOp-^sequential_3/conv2d_5/BiasAdd/ReadVariableOp,^sequential_3/conv2d_5/Conv2D/ReadVariableOp,^sequential_3/dense_2/BiasAdd/ReadVariableOp+^sequential_3/dense_2/MatMul/ReadVariableOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 2\
,sequential_3/conv2d_3/BiasAdd/ReadVariableOp,sequential_3/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_3/Conv2D/ReadVariableOp+sequential_3/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_4/BiasAdd/ReadVariableOp,sequential_3/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_4/Conv2D/ReadVariableOp+sequential_3/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_5/BiasAdd/ReadVariableOp,sequential_3/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_5/Conv2D/ReadVariableOp+sequential_3/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_3/dense_2/BiasAdd/ReadVariableOp+sequential_3/dense_2/BiasAdd/ReadVariableOp2X
*sequential_3/dense_2/MatMul/ReadVariableOp*sequential_3/dense_2/MatMul/ReadVariableOp2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
э
~
.__inference_random_flip_1_layer_call_fn_761093

inputs
unknown:	
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7595262
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
щ>
і
H__inference_sequential_3_layer_call_and_return_conditional_losses_760260

inputsA
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource: @6
(conv2d_5_biasadd_readvariableop_resource:@;
&dense_2_matmul_readvariableop_resource:ђЫђ6
'dense_2_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђi5
'dense_3_biasadd_readvariableop_resource:i
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpm
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_2/Cast/xq
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_2/Cast_1/xі
rescaling_2/mulMulinputsrescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_2/mulЏ
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_2/add░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOp═
conv2d_3/Conv2DConv2Drescaling_2/add:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤*
paddingSAME*
strides
2
conv2d_3/Conv2DД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp«
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤2
conv2d_3/BiasAdd}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:         ┤┤2
conv2d_3/ReluК
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:         ZZ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpп
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ *
paddingSAME*
strides
2
conv2d_4/Conv2DД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOpг
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         ZZ 2
conv2d_4/ReluК
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:         -- *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpп
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@*
paddingSAME*
strides
2
conv2d_5/Conv2DД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpг
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         --@2
conv2d_5/ReluК
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPoolљ
dropout_1/IdentityIdentity max_pooling2d_5/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout_1/Identitys
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     y  2
flatten_1/Constю
flatten_1/ReshapeReshapedropout_1/Identity:output:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђЫ2
flatten_1/Reshapeе
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*!
_output_shapes
:ђЫђ*
dtype02
dense_2/MatMul/ReadVariableOpа
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_2/MatMulЦ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_2/Reluд
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђi*
dtype02
dense_3/MatMul/ReadVariableOpЪ
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
dense_3/MatMulц
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02 
dense_3/BiasAdd/ReadVariableOpА
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         i2

IdentityЎ
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Еж
ф
H__inference_sequential_2_layer_call_and_return_conditional_losses_760871

inputsM
?random_flip_1_stateful_uniform_full_int_rngreadandskip_resource:	H
:random_rotation_1_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_1_stateful_uniform_rngreadandskip_resource:	
identityѕб6random_flip_1/stateful_uniform_full_int/RngReadAndSkipб]random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgбdrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterб1random_rotation_1/stateful_uniform/RngReadAndSkipб-random_zoom_1/stateful_uniform/RngReadAndSkipе
-random_flip_1/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_flip_1/stateful_uniform_full_int/shapeе
-random_flip_1/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_flip_1/stateful_uniform_full_int/Constш
,random_flip_1/stateful_uniform_full_int/ProdProd6random_flip_1/stateful_uniform_full_int/shape:output:06random_flip_1/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2.
,random_flip_1/stateful_uniform_full_int/Prodб
.random_flip_1/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :20
.random_flip_1/stateful_uniform_full_int/Cast/x¤
.random_flip_1/stateful_uniform_full_int/Cast_1Cast5random_flip_1/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.random_flip_1/stateful_uniform_full_int/Cast_1╠
6random_flip_1/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_1_stateful_uniform_full_int_rngreadandskip_resource7random_flip_1/stateful_uniform_full_int/Cast/x:output:02random_flip_1/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:28
6random_flip_1/stateful_uniform_full_int/RngReadAndSkip─
;random_flip_1/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_flip_1/stateful_uniform_full_int/strided_slice/stack╚
=random_flip_1/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_1/stateful_uniform_full_int/strided_slice/stack_1╚
=random_flip_1/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_1/stateful_uniform_full_int/strided_slice/stack_2п
5random_flip_1/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_1/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_1/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_1/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_1/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask27
5random_flip_1/stateful_uniform_full_int/strided_sliceя
/random_flip_1/stateful_uniform_full_int/BitcastBitcast>random_flip_1/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type021
/random_flip_1/stateful_uniform_full_int/Bitcast╚
=random_flip_1/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_1/stateful_uniform_full_int/strided_slice_1/stack╠
?random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1╠
?random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2л
7random_flip_1/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_1/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_1/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:29
7random_flip_1/stateful_uniform_full_int/strided_slice_1С
1random_flip_1/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_1/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type023
1random_flip_1/stateful_uniform_full_int/Bitcast_1ю
+random_flip_1/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_flip_1/stateful_uniform_full_int/algѓ
'random_flip_1/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_1/stateful_uniform_full_int/shape:output:0:random_flip_1/stateful_uniform_full_int/Bitcast_1:output:08random_flip_1/stateful_uniform_full_int/Bitcast:output:04random_flip_1/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2)
'random_flip_1/stateful_uniform_full_int~
random_flip_1/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip_1/zeros_like╣
random_flip_1/stackPack0random_flip_1/stateful_uniform_full_int:output:0!random_flip_1/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip_1/stackЌ
!random_flip_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!random_flip_1/strided_slice/stackЏ
#random_flip_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#random_flip_1/strided_slice/stack_1Џ
#random_flip_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#random_flip_1/strided_slice/stack_2▄
random_flip_1/strided_sliceStridedSlicerandom_flip_1/stack:output:0*random_flip_1/strided_slice/stack:output:0,random_flip_1/strided_slice/stack_1:output:0,random_flip_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip_1/strided_sliceы
Arandom_flip_1/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ┤┤2C
Arandom_flip_1/stateless_random_flip_left_right/control_dependencyТ
4random_flip_1/stateless_random_flip_left_right/ShapeShapeJrandom_flip_1/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:26
4random_flip_1/stateless_random_flip_left_right/Shapeм
Brandom_flip_1/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Brandom_flip_1/stateless_random_flip_left_right/strided_slice/stackо
Drandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Drandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_1о
Drandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Drandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_2Ч
<random_flip_1/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_1/stateless_random_flip_left_right/Shape:output:0Krandom_flip_1/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_1/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<random_flip_1/stateless_random_flip_left_right/strided_sliceЏ
Mrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_1/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2O
Mrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shape▀
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2M
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/min▀
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2M
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/max┤
drandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_1/strided_slice:output:0* 
_output_shapes
::2f
drandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterо
]random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlge^random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2_
]random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgъ
`random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0crandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:         2b
`random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2Ь
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2M
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/subІ
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         2M
Krandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mul­
Grandom_flip_1/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         2I
Grandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform┬
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/1┬
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/2┬
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_1/stateless_random_flip_left_right/Reshape/shape/3н
<random_flip_1/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_1/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_1/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_1/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_1/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2>
<random_flip_1/stateless_random_flip_left_right/Reshape/shape╔
6random_flip_1/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_1/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         28
6random_flip_1/stateless_random_flip_left_right/Reshape­
4random_flip_1/stateless_random_flip_left_right/RoundRound?random_flip_1/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         26
4random_flip_1/stateless_random_flip_left_right/Round╚
=random_flip_1/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_1/stateless_random_flip_left_right/ReverseV2/axisЛ
8random_flip_1/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_1/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_1/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ┤┤2:
8random_flip_1/stateless_random_flip_left_right/ReverseV2е
2random_flip_1/stateless_random_flip_left_right/mulMul8random_flip_1/stateless_random_flip_left_right/Round:y:0Arandom_flip_1/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ┤┤24
2random_flip_1/stateless_random_flip_left_right/mul▒
4random_flip_1/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?26
4random_flip_1/stateless_random_flip_left_right/sub/xб
2random_flip_1/stateless_random_flip_left_right/subSub=random_flip_1/stateless_random_flip_left_right/sub/x:output:08random_flip_1/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         24
2random_flip_1/stateless_random_flip_left_right/sub│
4random_flip_1/stateless_random_flip_left_right/mul_1Mul6random_flip_1/stateless_random_flip_left_right/sub:z:0Jrandom_flip_1/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ┤┤26
4random_flip_1/stateless_random_flip_left_right/mul_1Ъ
2random_flip_1/stateless_random_flip_left_right/addAddV26random_flip_1/stateless_random_flip_left_right/mul:z:08random_flip_1/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ┤┤24
2random_flip_1/stateless_random_flip_left_right/addў
random_rotation_1/ShapeShape6random_flip_1/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_1/Shapeў
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stackю
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1ю
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2╬
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_sliceЦ
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2)
'random_rotation_1/strided_slice_1/stackЕ
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2+
)random_rotation_1/strided_slice_1/stack_1а
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2п
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1ћ
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/CastЦ
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2)
'random_rotation_1/strided_slice_2/stackЕ
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2+
)random_rotation_1/strided_slice_2/stack_1а
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2п
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2ў
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1┤
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shapeЋ
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ┐2(
&random_rotation_1/stateful_uniform/minЋ
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ?2(
&random_rotation_1/stateful_uniform/maxъ
(random_rotation_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_1/stateful_uniform/Constр
'random_rotation_1/stateful_uniform/ProdProd1random_rotation_1/stateful_uniform/shape:output:01random_rotation_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/stateful_uniform/Prodў
)random_rotation_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_1/stateful_uniform/Cast/x└
)random_rotation_1/stateful_uniform/Cast_1Cast0random_rotation_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_1/stateful_uniform/Cast_1│
1random_rotation_1/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_1_stateful_uniform_rngreadandskip_resource2random_rotation_1/stateful_uniform/Cast/x:output:0-random_rotation_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_1/stateful_uniform/RngReadAndSkip║
6random_rotation_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_1/stateful_uniform/strided_slice/stackЙ
8random_rotation_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice/stack_1Й
8random_rotation_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice/stack_2║
0random_rotation_1/stateful_uniform/strided_sliceStridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0?random_rotation_1/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_1/stateful_uniform/strided_slice¤
*random_rotation_1/stateful_uniform/BitcastBitcast9random_rotation_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_1/stateful_uniform/BitcastЙ
8random_rotation_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice_1/stack┬
:random_rotation_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_1/stateful_uniform/strided_slice_1/stack_1┬
:random_rotation_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_1/stateful_uniform/strided_slice_1/stack_2▓
2random_rotation_1/stateful_uniform/strided_slice_1StridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_1/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_1/stateful_uniform/strided_slice_1Н
,random_rotation_1/stateful_uniform/Bitcast_1Bitcast;random_rotation_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_1/stateful_uniform/Bitcast_1─
?random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algц
;random_rotation_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_1/stateful_uniform/shape:output:05random_rotation_1/stateful_uniform/Bitcast_1:output:03random_rotation_1/stateful_uniform/Bitcast:output:0Hrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2=
;random_rotation_1/stateful_uniform/StatelessRandomUniformV2┌
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/subэ
&random_rotation_1/stateful_uniform/mulMulDrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_1/stateful_uniform/mul▄
"random_rotation_1/stateful_uniformAddV2*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2$
"random_rotation_1/stateful_uniformЌ
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2)
'random_rotation_1/rotation_matrix/sub/yк
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/subФ
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2'
%random_rotation_1/rotation_matrix/CosЏ
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)random_rotation_1/rotation_matrix/sub_1/y╠
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1█
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2'
%random_rotation_1/rotation_matrix/mulФ
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2'
%random_rotation_1/rotation_matrix/SinЏ
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)random_rotation_1/rotation_matrix/sub_2/y╩
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2▀
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/mul_1▀
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/sub_3▀
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/sub_4Ъ
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/yЫ
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2+
)random_rotation_1/rotation_matrix/truedivЏ
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)random_rotation_1/rotation_matrix/sub_5/y╩
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5»
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Sin_1Џ
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)random_rotation_1/rotation_matrix/sub_6/y╠
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6р
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/mul_2»
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Cos_1Џ
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)random_rotation_1/rotation_matrix/sub_7/y╩
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7р
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/mul_3▀
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2'
%random_rotation_1/rotation_matrix/add▀
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/sub_8Б
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/yЭ
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2-
+random_rotation_1/rotation_matrix/truediv_1е
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/ShapeИ
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack╝
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1╝
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2«
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice»
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Cos_2├
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stackК
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2с
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1»
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Sin_2├
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stackК
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2с
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2├
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2'
%random_rotation_1/rotation_matrix/Neg├
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stackК
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2т
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3»
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Sin_3├
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stackК
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2с
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4»
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/Cos_3├
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stackК
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2с
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5├
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stackК
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1К
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2у
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6д
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1І
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packedБ
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const§
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2)
'random_rotation_1/rotation_matrix/zerosа
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis▄
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2*
(random_rotation_1/rotation_matrix/concatг
!random_rotation_1/transform/ShapeShape6random_flip_1/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shapeг
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack░
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1░
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2Ш
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_sliceЋ
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_valueМ
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV36random_flip_1/stateless_random_flip_left_right/add:z:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3Ц
random_zoom_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/Shapeљ
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stackћ
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1ћ
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2Х
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_sliceЮ
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2%
#random_zoom_1/strided_slice_1/stackА
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2'
%random_zoom_1/strided_slice_1/stack_1ў
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2└
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1ѕ
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/CastЮ
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2%
#random_zoom_1/strided_slice_2/stackА
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2'
%random_zoom_1/strided_slice_2/stack_1ў
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2└
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2ї
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1њ
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1┘
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shapeЇ
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2$
"random_zoom_1/stateful_uniform/minЇ
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠ї?2$
"random_zoom_1/stateful_uniform/maxќ
$random_zoom_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$random_zoom_1/stateful_uniform/ConstЛ
#random_zoom_1/stateful_uniform/ProdProd-random_zoom_1/stateful_uniform/shape:output:0-random_zoom_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/stateful_uniform/Prodљ
%random_zoom_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/stateful_uniform/Cast/x┤
%random_zoom_1/stateful_uniform/Cast_1Cast,random_zoom_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%random_zoom_1/stateful_uniform/Cast_1Ъ
-random_zoom_1/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_1_stateful_uniform_rngreadandskip_resource.random_zoom_1/stateful_uniform/Cast/x:output:0)random_zoom_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:2/
-random_zoom_1/stateful_uniform/RngReadAndSkip▓
2random_zoom_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2random_zoom_1/stateful_uniform/strided_slice/stackХ
4random_zoom_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_1/stateful_uniform/strided_slice/stack_1Х
4random_zoom_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_1/stateful_uniform/strided_slice/stack_2б
,random_zoom_1/stateful_uniform/strided_sliceStridedSlice5random_zoom_1/stateful_uniform/RngReadAndSkip:value:0;random_zoom_1/stateful_uniform/strided_slice/stack:output:0=random_zoom_1/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2.
,random_zoom_1/stateful_uniform/strided_slice├
&random_zoom_1/stateful_uniform/BitcastBitcast5random_zoom_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom_1/stateful_uniform/BitcastХ
4random_zoom_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom_1/stateful_uniform/strided_slice_1/stack║
6random_zoom_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_1/stateful_uniform/strided_slice_1/stack_1║
6random_zoom_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_zoom_1/stateful_uniform/strided_slice_1/stack_2џ
.random_zoom_1/stateful_uniform/strided_slice_1StridedSlice5random_zoom_1/stateful_uniform/RngReadAndSkip:value:0=random_zoom_1/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_1/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:20
.random_zoom_1/stateful_uniform/strided_slice_1╔
(random_zoom_1/stateful_uniform/Bitcast_1Bitcast7random_zoom_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02*
(random_zoom_1/stateful_uniform/Bitcast_1╝
;random_zoom_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2=
;random_zoom_1/stateful_uniform/StatelessRandomUniformV2/algљ
7random_zoom_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_1/stateful_uniform/shape:output:01random_zoom_1/stateful_uniform/Bitcast_1:output:0/random_zoom_1/stateful_uniform/Bitcast:output:0Drandom_zoom_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         29
7random_zoom_1/stateful_uniform/StatelessRandomUniformV2╩
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/subв
"random_zoom_1/stateful_uniform/mulMul@random_zoom_1/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         2$
"random_zoom_1/stateful_uniform/mulл
random_zoom_1/stateful_uniformAddV2&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis▀
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
random_zoom_1/concatЈ
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shapeе
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stackг
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1г
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2■
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_sliceЄ
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2!
random_zoom_1/zoom_matrix/sub/yф
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/subЈ
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y├
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truedivи
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack╗
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1╗
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2┼
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1І
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2#
!random_zoom_1/zoom_matrix/sub_1/x█
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         2!
random_zoom_1/zoom_matrix/sub_1├
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         2
random_zoom_1/zoom_matrix/mulІ
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2#
!random_zoom_1/zoom_matrix/sub_2/y«
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2Њ
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y╦
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1и
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack╗
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1╗
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2┼
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2І
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2#
!random_zoom_1/zoom_matrix/sub_3/x█
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2!
random_zoom_1/zoom_matrix/sub_3╔
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         2!
random_zoom_1/zoom_matrix/mul_1и
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack╗
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1╗
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2┼
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3ќ
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1в
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packedЊ
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/ConstП
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2!
random_zoom_1/zoom_matrix/zerosџ
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1ы
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packedЌ
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Constт
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2#
!random_zoom_1/zoom_matrix/zeros_1и
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack╗
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1╗
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2┼
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4џ
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1ы
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packedЌ
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Constт
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         2#
!random_zoom_1/zoom_matrix/zeros_2љ
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axisь
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2"
 random_zoom_1/zoom_matrix/concat╣
random_zoom_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_1/transform/Shapeц
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stackе
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1е
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2я
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_sliceЇ
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_valueл
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3г
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identity▓
NoOpNoOp7^random_flip_1/stateful_uniform_full_int/RngReadAndSkip^^random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlge^random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2^random_rotation_1/stateful_uniform/RngReadAndSkip.^random_zoom_1/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ┤┤: : : 2p
6random_flip_1/stateful_uniform_full_int/RngReadAndSkip6random_flip_1/stateful_uniform_full_int/RngReadAndSkip2Й
]random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg]random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2╠
drandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterdrandom_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2f
1random_rotation_1/stateful_uniform/RngReadAndSkip1random_rotation_1/stateful_uniform/RngReadAndSkip2^
-random_zoom_1/stateful_uniform/RngReadAndSkip-random_zoom_1/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Џё
┬
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761407

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЂ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2
strided_slice_1/stackЁ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2В
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_2/stackЁ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2В
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1v
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/shape/1А
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠ї?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЎ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xі
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1┘
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipќ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackџ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1џ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2╬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЎ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcastџ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackъ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1ъ
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2к
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Ъ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1а
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/alg╝
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         2+
)stateful_uniform/StatelessRandomUniformV2њ
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub│
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         2
stateful_uniform/mulў
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         2
stateful_uniform\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЎ
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
concate
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
zoom_matrix/Shapeї
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
zoom_matrix/strided_slice/stackљ
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_1љ
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_2ф
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
zoom_matrix/strided_slicek
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub/yr
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/subs
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv/yІ
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truedivЏ
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_1/stackЪ
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_1/stack_1Ъ
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_1/stack_2ы
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_1o
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_1/xБ
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/sub_1І
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         2
zoom_matrix/mulo
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_2/yv
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/sub_2w
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv_1/yЊ
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truediv_1Џ
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_2/stackЪ
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_2/stack_1Ъ
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_2/stack_2ы
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_2o
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_3/xБ
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/sub_3Љ
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         2
zoom_matrix/mul_1Џ
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_3/stackЪ
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_3/stack_1Ъ
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_3/stack_2ы
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_3z
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/packed/1│
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros/packedw
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros/ConstЦ
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros~
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/packed/1╣
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_1/packed{
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_1/ConstГ
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros_1Џ
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_4/stackЪ
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_4/stack_1Ъ
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_4/stack_2ы
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_4~
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/packed/1╣
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_2/packed{
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_2/ConstГ
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros_2t
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/concat/axisр
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
zoom_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shapeѕ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackї
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1ї
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2і
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value┼
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3ъ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Љ
Э
C__inference_dense_2_layer_call_and_return_conditional_losses_759770

inputs3
matmul_readvariableop_resource:ђЫђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpљ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ђЫђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђЫ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђЫ
 
_user_specified_nameinputs
А
Џ
-__inference_sequential_3_layer_call_fn_759816
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ђЫђ
	unknown_6:	ђ
	unknown_7:	ђi
	unknown_8:i
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7597932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
─
»
-__inference_sequential_2_layer_call_fn_760597

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityѕбStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7595512
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ┤┤: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
В
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_759211

inputs
identity­
random_flip_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7591962
random_flip_1/PartitionedCallю
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7592022#
!random_rotation_1/PartitionedCallћ
random_zoom_1/PartitionedCallPartitionedCall*random_rotation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7592082
random_zoom_1/PartitionedCallё
IdentityIdentity&random_zoom_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ёX
ж
__inference__traced_save_761571
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename┤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*к
value╝B╣+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesя
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╣
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*ё
_input_shapesЫ
№: ::: : : @:@:ђЫђ:ђ:	ђi:i: : : : : :::: : : : ::: : : @:@:ђЫђ:ђ:	ђi:i::: : : @:@:ђЫђ:ђ:	ђi:i: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:ђЫђ:!

_output_shapes	
:ђ:%	!

_output_shapes
:	ђi: 


_output_shapes
:i:
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
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:ђЫђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђi:  

_output_shapes
:i:,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: @: &

_output_shapes
:@:''#
!
_output_shapes
:ђЫђ:!(

_output_shapes	
:ђ:%)!

_output_shapes
:	ђi: *

_output_shapes
:i:+

_output_shapes
: 
Й
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760964

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         -- *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         -- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ZZ :W S
/
_output_shapes
:         ZZ 
 
_user_specified_nameinputs
О
М
H__inference_sequential_2_layer_call_and_return_conditional_losses_759551

inputs"
random_flip_1_759541:	&
random_rotation_1_759544:	"
random_zoom_1_759547:	
identityѕб%random_flip_1/StatefulPartitionedCallб)random_rotation_1/StatefulPartitionedCallб%random_zoom_1/StatefulPartitionedCallЪ
%random_flip_1/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_1_759541*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7595262'
%random_flip_1/StatefulPartitionedCallО
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_1/StatefulPartitionedCall:output:0random_rotation_1_759544*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7594552+
)random_rotation_1/StatefulPartitionedCall╦
%random_zoom_1/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_1/StatefulPartitionedCall:output:0random_zoom_1_759547*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7593242'
%random_zoom_1/StatefulPartitionedCallЊ
IdentityIdentity.random_zoom_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identity╩
NoOpNoOp&^random_flip_1/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall&^random_zoom_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ┤┤: : : 2N
%random_flip_1/StatefulPartitionedCall%random_flip_1/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall2N
%random_zoom_1/StatefulPartitionedCall%random_zoom_1/StatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ч
Ў
(__inference_dense_2_layer_call_fn_761051

inputs
unknown:ђЫђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7597702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђЫ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђЫ
 
_user_specified_nameinputs
сf
 
I__inference_random_flip_1_layer_call_and_return_conditional_losses_759526

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityѕб(stateful_uniform_full_int/RngReadAndSkipбOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgбVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterї
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shapeї
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Constй
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prodє
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/xЦ
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1є
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkipе
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stackг
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1г
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2ё
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice┤
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcastг
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack░
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1░
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2Ч
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1║
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1ђ
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg«
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_likeЂ
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ѕ
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_sliceН
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ┤┤25
3stateless_random_flip_left_right/control_dependency╝
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/ShapeХ
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stack║
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1║
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2е
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceы
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape├
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min├
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2?
=stateless_random_flip_left_right/stateless_random_uniform/maxі
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterг
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg╩
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:         2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2Х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/subМ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         2?
=stateless_random_flip_left_right/stateless_random_uniform/mulИ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         2;
9stateless_random_flip_left_right/stateless_random_uniformд
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1д
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2д
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3ђ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shapeЉ
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2*
(stateless_random_flip_left_right/Reshapeк
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2(
&stateless_random_flip_left_right/Roundг
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axisЎ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ┤┤2,
*stateless_random_flip_left_right/ReverseV2­
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ┤┤2&
$stateless_random_flip_left_right/mulЋ
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2(
&stateless_random_flip_left_right/sub/xЖ
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2&
$stateless_random_flip_left_right/subч
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ┤┤2(
&stateless_random_flip_left_right/mul_1у
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ┤┤2&
$stateless_random_flip_left_right/addЇ
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityц
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2б
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
щ
N
2__inference_random_rotation_1_layer_call_fn_761160

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7592022
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ь
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_761031

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Н
F
*__inference_flatten_1_layer_call_fn_761036

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђЫ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_7597572
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђЫ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
њ
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_759749

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
█Џ
к
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761289

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЂ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2
strided_slice_1/stackЁ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2В
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_2/stackЁ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2В
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ┐2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЎ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xі
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1┘
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipќ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackџ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1џ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2╬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЎ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcastџ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackъ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1ъ
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2к
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Ъ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1а
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/algИ
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2+
)stateful_uniform/StatelessRandomUniformV2њ
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub»
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2
stateful_uniform/mulћ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_1/yё
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1Њ
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_2/yѓ
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2Ќ
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_1Ќ
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_3Ќ
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/yф
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_5/yѓ
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_6/yё
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6Ў
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
rotation_matrix/sub_7/yѓ
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7Ў
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/mul_3Ќ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/addЌ
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y░
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/Shapeћ
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stackў
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1ў
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2┬
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_2Ъ
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stackБ
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1Б
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2э
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_2Ъ
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stackБ
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1Б
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2э
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2Ї
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2
rotation_matrix/NegЪ
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stackБ
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1Б
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2щ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Sin_3Ъ
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stackБ
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1Б
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2э
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         2
rotation_matrix/Cos_3Ъ
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stackБ
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1Б
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2э
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5Ъ
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stackБ
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1Б
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2ч
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6ѓ
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1├
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constх
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axisе
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shapeѕ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackї
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1ї
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2і
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value╔
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3ъ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
в
╝
-__inference_sequential_2_layer_call_fn_759571
random_flip_1_input
unknown:	
	unknown_0:	
	unknown_1:	
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_1_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7595512
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ┤┤: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         ┤┤
-
_user_specified_namerandom_flip_1_input
Ц
ъ
)__inference_conv2d_3_layer_call_fn_760893

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_7596862
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ж
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_759757

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     y  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђЫ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђЫ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
џ
У
-__inference_sequential_3_layer_call_fn_760045
sequential_2_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:ђЫђ
	unknown_9:	ђ

unknown_10:	ђi

unknown_11:i
identityѕбStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7599852
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         ┤┤: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
Ф
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_759644

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
e
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761305

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Е

ш
C__inference_dense_3_layer_call_and_return_conditional_losses_759786

inputs1
matmul_readvariableop_resource:	ђi-
biasadd_readvariableop_resource:i
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђi*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:i*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
─
c
*__inference_dropout_1_layer_call_fn_761014

inputs
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7598622
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
▄
-__inference_sequential_3_layer_call_fn_760212

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:ђЫђ
	unknown_9:	ђ

unknown_10:	ђi

unknown_11:i
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7599852
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         ┤┤: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
њ
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_761019

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Й
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_759742

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         --@:W S
/
_output_shapes
:         --@
 
_user_specified_nameinputs
ь
H
,__inference_rescaling_2_layer_call_fn_760876

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_7596732
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ж
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_761042

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     y  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђЫ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђЫ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Нё
х
H__inference_sequential_3_layer_call_and_return_conditional_losses_760581

inputsZ
Lsequential_2_random_flip_1_stateful_uniform_full_int_rngreadandskip_resource:	U
Gsequential_2_random_rotation_1_stateful_uniform_rngreadandskip_resource:	Q
Csequential_2_random_zoom_1_stateful_uniform_rngreadandskip_resource:	A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource: @6
(conv2d_5_biasadd_readvariableop_resource:@;
&dense_2_matmul_readvariableop_resource:ђЫђ6
'dense_2_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђi5
'dense_3_biasadd_readvariableop_resource:i
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpбCsequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkipбjsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgбqsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterб>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkipб:sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip┬
:sequential_2/random_flip_1/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_flip_1/stateful_uniform_full_int/shape┬
:sequential_2/random_flip_1/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_2/random_flip_1/stateful_uniform_full_int/ConstЕ
9sequential_2/random_flip_1/stateful_uniform_full_int/ProdProdCsequential_2/random_flip_1/stateful_uniform_full_int/shape:output:0Csequential_2/random_flip_1/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2;
9sequential_2/random_flip_1/stateful_uniform_full_int/Prod╝
;sequential_2/random_flip_1/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_2/random_flip_1/stateful_uniform_full_int/Cast/xШ
;sequential_2/random_flip_1/stateful_uniform_full_int/Cast_1CastBsequential_2/random_flip_1/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2=
;sequential_2/random_flip_1/stateful_uniform_full_int/Cast_1Ї
Csequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLsequential_2_random_flip_1_stateful_uniform_full_int_rngreadandskip_resourceDsequential_2/random_flip_1/stateful_uniform_full_int/Cast/x:output:0?sequential_2/random_flip_1/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2E
Csequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkipя
Hsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stackР
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_1Р
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_2д
Bsequential_2/random_flip_1/stateful_uniform_full_int/strided_sliceStridedSliceKsequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack:output:0Ssequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_1:output:0Ssequential_2/random_flip_1/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2D
Bsequential_2/random_flip_1/stateful_uniform_full_int/strided_sliceЁ
<sequential_2/random_flip_1/stateful_uniform_full_int/BitcastBitcastKsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02>
<sequential_2/random_flip_1/stateful_uniform_full_int/BitcastР
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stackТ
Lsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2N
Lsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1Т
Lsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2N
Lsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2ъ
Dsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1StridedSliceKsequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkip:value:0Ssequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack:output:0Usequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Usequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2F
Dsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1І
>sequential_2/random_flip_1/stateful_uniform_full_int/Bitcast_1BitcastMsequential_2/random_flip_1/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02@
>sequential_2/random_flip_1/stateful_uniform_full_int/Bitcast_1Х
8sequential_2/random_flip_1/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_2/random_flip_1/stateful_uniform_full_int/algл
4sequential_2/random_flip_1/stateful_uniform_full_intStatelessRandomUniformFullIntV2Csequential_2/random_flip_1/stateful_uniform_full_int/shape:output:0Gsequential_2/random_flip_1/stateful_uniform_full_int/Bitcast_1:output:0Esequential_2/random_flip_1/stateful_uniform_full_int/Bitcast:output:0Asequential_2/random_flip_1/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	26
4sequential_2/random_flip_1/stateful_uniform_full_intў
%sequential_2/random_flip_1/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2'
%sequential_2/random_flip_1/zeros_likeь
 sequential_2/random_flip_1/stackPack=sequential_2/random_flip_1/stateful_uniform_full_int:output:0.sequential_2/random_flip_1/zeros_like:output:0*
N*
T0	*
_output_shapes

:2"
 sequential_2/random_flip_1/stack▒
.sequential_2/random_flip_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.sequential_2/random_flip_1/strided_slice/stackх
0sequential_2/random_flip_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_2/random_flip_1/strided_slice/stack_1х
0sequential_2/random_flip_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0sequential_2/random_flip_1/strided_slice/stack_2ф
(sequential_2/random_flip_1/strided_sliceStridedSlice)sequential_2/random_flip_1/stack:output:07sequential_2/random_flip_1/strided_slice/stack:output:09sequential_2/random_flip_1/strided_slice/stack_1:output:09sequential_2/random_flip_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2*
(sequential_2/random_flip_1/strided_sliceІ
Nsequential_2/random_flip_1/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ┤┤2P
Nsequential_2/random_flip_1/stateless_random_flip_left_right/control_dependencyЇ
Asequential_2/random_flip_1/stateless_random_flip_left_right/ShapeShapeWsequential_2/random_flip_1/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2C
Asequential_2/random_flip_1/stateless_random_flip_left_right/ShapeВ
Osequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Q
Osequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack­
Qsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2S
Qsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_1­
Qsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2S
Qsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_2╩
Isequential_2/random_flip_1/stateless_random_flip_left_right/strided_sliceStridedSliceJsequential_2/random_flip_1/stateless_random_flip_left_right/Shape:output:0Xsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack:output:0Zsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_1:output:0Zsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2K
Isequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice┬
Zsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shapePackRsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2\
Zsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shapeщ
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/minщ
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2Z
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/max█
qsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_2/random_flip_1/strided_slice:output:0* 
_output_shapes
::2s
qsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter§
jsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgr^sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2l
jsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgВ
msequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2csequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0wsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0{sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0psequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:         2o
msequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2б
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/subSubasequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/max:output:0asequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2Z
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/sub┐
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mulMulvsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0\sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         2Z
Xsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mulц
Tsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniformAddV2\sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0asequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         2V
Tsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform▄
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2M
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/1▄
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2M
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/2▄
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2M
Ksequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/3б
Isequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shapePackRsequential_2/random_flip_1/stateless_random_flip_left_right/strided_slice:output:0Tsequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/1:output:0Tsequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/2:output:0Tsequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2K
Isequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape§
Csequential_2/random_flip_1/stateless_random_flip_left_right/ReshapeReshapeXsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform:z:0Rsequential_2/random_flip_1/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2E
Csequential_2/random_flip_1/stateless_random_flip_left_right/ReshapeЌ
Asequential_2/random_flip_1/stateless_random_flip_left_right/RoundRoundLsequential_2/random_flip_1/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2C
Asequential_2/random_flip_1/stateless_random_flip_left_right/RoundР
Jsequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2/axisЁ
Esequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2	ReverseV2Wsequential_2/random_flip_1/stateless_random_flip_left_right/control_dependency:output:0Ssequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ┤┤2G
Esequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2▄
?sequential_2/random_flip_1/stateless_random_flip_left_right/mulMulEsequential_2/random_flip_1/stateless_random_flip_left_right/Round:y:0Nsequential_2/random_flip_1/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ┤┤2A
?sequential_2/random_flip_1/stateless_random_flip_left_right/mul╦
Asequential_2/random_flip_1/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2C
Asequential_2/random_flip_1/stateless_random_flip_left_right/sub/xо
?sequential_2/random_flip_1/stateless_random_flip_left_right/subSubJsequential_2/random_flip_1/stateless_random_flip_left_right/sub/x:output:0Esequential_2/random_flip_1/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2A
?sequential_2/random_flip_1/stateless_random_flip_left_right/subу
Asequential_2/random_flip_1/stateless_random_flip_left_right/mul_1MulCsequential_2/random_flip_1/stateless_random_flip_left_right/sub:z:0Wsequential_2/random_flip_1/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ┤┤2C
Asequential_2/random_flip_1/stateless_random_flip_left_right/mul_1М
?sequential_2/random_flip_1/stateless_random_flip_left_right/addAddV2Csequential_2/random_flip_1/stateless_random_flip_left_right/mul:z:0Esequential_2/random_flip_1/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ┤┤2A
?sequential_2/random_flip_1/stateless_random_flip_left_right/add┐
$sequential_2/random_rotation_1/ShapeShapeCsequential_2/random_flip_1/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2&
$sequential_2/random_rotation_1/Shape▓
2sequential_2/random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_2/random_rotation_1/strided_slice/stackХ
4sequential_2/random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice/stack_1Х
4sequential_2/random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice/stack_2ю
,sequential_2/random_rotation_1/strided_sliceStridedSlice-sequential_2/random_rotation_1/Shape:output:0;sequential_2/random_rotation_1/strided_slice/stack:output:0=sequential_2/random_rotation_1/strided_slice/stack_1:output:0=sequential_2/random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_2/random_rotation_1/strided_slice┐
4sequential_2/random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        26
4sequential_2/random_rotation_1/strided_slice_1/stack├
6sequential_2/random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        28
6sequential_2/random_rotation_1/strided_slice_1/stack_1║
6sequential_2/random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_1/stack_2д
.sequential_2/random_rotation_1/strided_slice_1StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_1/stack:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/random_rotation_1/strided_slice_1╗
#sequential_2/random_rotation_1/CastCast7sequential_2/random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_2/random_rotation_1/Cast┐
4sequential_2/random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        26
4sequential_2/random_rotation_1/strided_slice_2/stack├
6sequential_2/random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         28
6sequential_2/random_rotation_1/strided_slice_2/stack_1║
6sequential_2/random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_2/stack_2д
.sequential_2/random_rotation_1/strided_slice_2StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_2/stack:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/random_rotation_1/strided_slice_2┐
%sequential_2/random_rotation_1/Cast_1Cast7sequential_2/random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_2/random_rotation_1/Cast_1█
5sequential_2/random_rotation_1/stateful_uniform/shapePack5sequential_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_rotation_1/stateful_uniform/shape»
3sequential_2/random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ┐25
3sequential_2/random_rotation_1/stateful_uniform/min»
3sequential_2/random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘ ?25
3sequential_2/random_rotation_1/stateful_uniform/maxИ
5sequential_2/random_rotation_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_2/random_rotation_1/stateful_uniform/ConstЋ
4sequential_2/random_rotation_1/stateful_uniform/ProdProd>sequential_2/random_rotation_1/stateful_uniform/shape:output:0>sequential_2/random_rotation_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/stateful_uniform/Prod▓
6sequential_2/random_rotation_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_2/random_rotation_1/stateful_uniform/Cast/xу
6sequential_2/random_rotation_1/stateful_uniform/Cast_1Cast=sequential_2/random_rotation_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 28
6sequential_2/random_rotation_1/stateful_uniform/Cast_1З
>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_2_random_rotation_1_stateful_uniform_rngreadandskip_resource?sequential_2/random_rotation_1/stateful_uniform/Cast/x:output:0:sequential_2/random_rotation_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:2@
>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkipн
Csequential_2/random_rotation_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_2/random_rotation_1/stateful_uniform/strided_slice/stackп
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_1п
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_2ѕ
=sequential_2/random_rotation_1/stateful_uniform/strided_sliceStridedSliceFsequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Lsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack:output:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_1:output:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2?
=sequential_2/random_rotation_1/stateful_uniform/strided_sliceШ
7sequential_2/random_rotation_1/stateful_uniform/BitcastBitcastFsequential_2/random_rotation_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type029
7sequential_2/random_rotation_1/stateful_uniform/Bitcastп
Esequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack▄
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_1▄
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_2ђ
?sequential_2/random_rotation_1/stateful_uniform/strided_slice_1StridedSliceFsequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack:output:0Psequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2A
?sequential_2/random_rotation_1/stateful_uniform/strided_slice_1Ч
9sequential_2/random_rotation_1/stateful_uniform/Bitcast_1BitcastHsequential_2/random_rotation_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02;
9sequential_2/random_rotation_1/stateful_uniform/Bitcast_1я
Lsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2N
Lsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algЫ
Hsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_2/random_rotation_1/stateful_uniform/shape:output:0Bsequential_2/random_rotation_1/stateful_uniform/Bitcast_1:output:0@sequential_2/random_rotation_1/stateful_uniform/Bitcast:output:0Usequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2J
Hsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2ј
3sequential_2/random_rotation_1/stateful_uniform/subSub<sequential_2/random_rotation_1/stateful_uniform/max:output:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3sequential_2/random_rotation_1/stateful_uniform/subФ
3sequential_2/random_rotation_1/stateful_uniform/mulMulQsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2:output:07sequential_2/random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         25
3sequential_2/random_rotation_1/stateful_uniform/mulљ
/sequential_2/random_rotation_1/stateful_uniformAddV27sequential_2/random_rotation_1/stateful_uniform/mul:z:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         21
/sequential_2/random_rotation_1/stateful_uniform▒
4sequential_2/random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?26
4sequential_2/random_rotation_1/rotation_matrix/sub/yЩ
2sequential_2/random_rotation_1/rotation_matrix/subSub)sequential_2/random_rotation_1/Cast_1:y:0=sequential_2/random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation_1/rotation_matrix/subм
2sequential_2/random_rotation_1/rotation_matrix/CosCos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         24
2sequential_2/random_rotation_1/rotation_matrix/Cosх
6sequential_2/random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_2/random_rotation_1/rotation_matrix/sub_1/yђ
4sequential_2/random_rotation_1/rotation_matrix/sub_1Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_1Ј
2sequential_2/random_rotation_1/rotation_matrix/mulMul6sequential_2/random_rotation_1/rotation_matrix/Cos:y:08sequential_2/random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         24
2sequential_2/random_rotation_1/rotation_matrix/mulм
2sequential_2/random_rotation_1/rotation_matrix/SinSin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         24
2sequential_2/random_rotation_1/rotation_matrix/Sinх
6sequential_2/random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_2/random_rotation_1/rotation_matrix/sub_2/y■
4sequential_2/random_rotation_1/rotation_matrix/sub_2Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_2Њ
4sequential_2/random_rotation_1/rotation_matrix/mul_1Mul6sequential_2/random_rotation_1/rotation_matrix/Sin:y:08sequential_2/random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/mul_1Њ
4sequential_2/random_rotation_1/rotation_matrix/sub_3Sub6sequential_2/random_rotation_1/rotation_matrix/mul:z:08sequential_2/random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/sub_3Њ
4sequential_2/random_rotation_1/rotation_matrix/sub_4Sub6sequential_2/random_rotation_1/rotation_matrix/sub:z:08sequential_2/random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/sub_4╣
8sequential_2/random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_2/random_rotation_1/rotation_matrix/truediv/yд
6sequential_2/random_rotation_1/rotation_matrix/truedivRealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_4:z:0Asequential_2/random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         28
6sequential_2/random_rotation_1/rotation_matrix/truedivх
6sequential_2/random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_2/random_rotation_1/rotation_matrix/sub_5/y■
4sequential_2/random_rotation_1/rotation_matrix/sub_5Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_5о
4sequential_2/random_rotation_1/rotation_matrix/Sin_1Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Sin_1х
6sequential_2/random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_2/random_rotation_1/rotation_matrix/sub_6/yђ
4sequential_2/random_rotation_1/rotation_matrix/sub_6Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_6Ћ
4sequential_2/random_rotation_1/rotation_matrix/mul_2Mul8sequential_2/random_rotation_1/rotation_matrix/Sin_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/mul_2о
4sequential_2/random_rotation_1/rotation_matrix/Cos_1Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Cos_1х
6sequential_2/random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_2/random_rotation_1/rotation_matrix/sub_7/y■
4sequential_2/random_rotation_1/rotation_matrix/sub_7Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_7Ћ
4sequential_2/random_rotation_1/rotation_matrix/mul_3Mul8sequential_2/random_rotation_1/rotation_matrix/Cos_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/mul_3Њ
2sequential_2/random_rotation_1/rotation_matrix/addAddV28sequential_2/random_rotation_1/rotation_matrix/mul_2:z:08sequential_2/random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         24
2sequential_2/random_rotation_1/rotation_matrix/addЊ
4sequential_2/random_rotation_1/rotation_matrix/sub_8Sub8sequential_2/random_rotation_1/rotation_matrix/sub_5:z:06sequential_2/random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/sub_8й
:sequential_2/random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_2/random_rotation_1/rotation_matrix/truediv_1/yг
8sequential_2/random_rotation_1/rotation_matrix/truediv_1RealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_8:z:0Csequential_2/random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2:
8sequential_2/random_rotation_1/rotation_matrix/truediv_1¤
4sequential_2/random_rotation_1/rotation_matrix/ShapeShape3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:26
4sequential_2/random_rotation_1/rotation_matrix/Shapeм
Bsequential_2/random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_2/random_rotation_1/rotation_matrix/strided_slice/stackо
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1о
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2Ч
<sequential_2/random_rotation_1/rotation_matrix/strided_sliceStridedSlice=sequential_2/random_rotation_1/rotation_matrix/Shape:output:0Ksequential_2/random_rotation_1/rotation_matrix/strided_slice/stack:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_2/random_rotation_1/rotation_matrix/strided_sliceо
4sequential_2/random_rotation_1/rotation_matrix/Cos_2Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Cos_2П
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2▒
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_1StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_1о
4sequential_2/random_rotation_1/rotation_matrix/Sin_2Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Sin_2П
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2▒
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_2StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_2Ж
2sequential_2/random_rotation_1/rotation_matrix/NegNegGsequential_2/random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         24
2sequential_2/random_rotation_1/rotation_matrix/NegП
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2│
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_3StridedSlice:sequential_2/random_rotation_1/rotation_matrix/truediv:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_3о
4sequential_2/random_rotation_1/rotation_matrix/Sin_3Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Sin_3П
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2▒
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_4StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_4о
4sequential_2/random_rotation_1/rotation_matrix/Cos_3Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/Cos_3П
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2▒
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_5StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_5П
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stackр
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1р
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2х
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_6StridedSlice<sequential_2/random_rotation_1/rotation_matrix/truediv_1:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_6└
=sequential_2/random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_2/random_rotation_1/rotation_matrix/zeros/packed/1┐
;sequential_2/random_rotation_1/rotation_matrix/zeros/packedPackEsequential_2/random_rotation_1/rotation_matrix/strided_slice:output:0Fsequential_2/random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2=
;sequential_2/random_rotation_1/rotation_matrix/zeros/packedй
:sequential_2/random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:sequential_2/random_rotation_1/rotation_matrix/zeros/Const▒
4sequential_2/random_rotation_1/rotation_matrix/zerosFillDsequential_2/random_rotation_1/rotation_matrix/zeros/packed:output:0Csequential_2/random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         26
4sequential_2/random_rotation_1/rotation_matrix/zeros║
:sequential_2/random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_2/random_rotation_1/rotation_matrix/concat/axisя
5sequential_2/random_rotation_1/rotation_matrix/concatConcatV2Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_1:output:06sequential_2/random_rotation_1/rotation_matrix/Neg:y:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_3:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_4:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_5:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_6:output:0=sequential_2/random_rotation_1/rotation_matrix/zeros:output:0Csequential_2/random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         27
5sequential_2/random_rotation_1/rotation_matrix/concatМ
.sequential_2/random_rotation_1/transform/ShapeShapeCsequential_2/random_flip_1/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:20
.sequential_2/random_rotation_1/transform/Shapeк
<sequential_2/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_rotation_1/transform/strided_slice/stack╩
>sequential_2/random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/random_rotation_1/transform/strided_slice/stack_1╩
>sequential_2/random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/random_rotation_1/transform/strided_slice/stack_2─
6sequential_2/random_rotation_1/transform/strided_sliceStridedSlice7sequential_2/random_rotation_1/transform/Shape:output:0Esequential_2/random_rotation_1/transform/strided_slice/stack:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_1:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6sequential_2/random_rotation_1/transform/strided_slice»
3sequential_2/random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_2/random_rotation_1/transform/fill_valueА
Csequential_2/random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Csequential_2/random_flip_1/stateless_random_flip_left_right/add:z:0>sequential_2/random_rotation_1/rotation_matrix/concat:output:0?sequential_2/random_rotation_1/transform/strided_slice:output:0<sequential_2/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
Csequential_2/random_rotation_1/transform/ImageProjectiveTransformV3╠
 sequential_2/random_zoom_1/ShapeShapeXsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2"
 sequential_2/random_zoom_1/Shapeф
.sequential_2/random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_2/random_zoom_1/strided_slice/stack«
0sequential_2/random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice/stack_1«
0sequential_2/random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice/stack_2ё
(sequential_2/random_zoom_1/strided_sliceStridedSlice)sequential_2/random_zoom_1/Shape:output:07sequential_2/random_zoom_1/strided_slice/stack:output:09sequential_2/random_zoom_1/strided_slice/stack_1:output:09sequential_2/random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_2/random_zoom_1/strided_sliceи
0sequential_2/random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        22
0sequential_2/random_zoom_1/strided_slice_1/stack╗
2sequential_2/random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        24
2sequential_2/random_zoom_1/strided_slice_1/stack_1▓
2sequential_2/random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_1/stack_2ј
*sequential_2/random_zoom_1/strided_slice_1StridedSlice)sequential_2/random_zoom_1/Shape:output:09sequential_2/random_zoom_1/strided_slice_1/stack:output:0;sequential_2/random_zoom_1/strided_slice_1/stack_1:output:0;sequential_2/random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_2/random_zoom_1/strided_slice_1»
sequential_2/random_zoom_1/CastCast3sequential_2/random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_2/random_zoom_1/Castи
0sequential_2/random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        22
0sequential_2/random_zoom_1/strided_slice_2/stack╗
2sequential_2/random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         24
2sequential_2/random_zoom_1/strided_slice_2/stack_1▓
2sequential_2/random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_2/stack_2ј
*sequential_2/random_zoom_1/strided_slice_2StridedSlice)sequential_2/random_zoom_1/Shape:output:09sequential_2/random_zoom_1/strided_slice_2/stack:output:0;sequential_2/random_zoom_1/strided_slice_2/stack_1:output:0;sequential_2/random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_2/random_zoom_1/strided_slice_2│
!sequential_2/random_zoom_1/Cast_1Cast3sequential_2/random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_2/random_zoom_1/Cast_1г
3sequential_2/random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_2/random_zoom_1/stateful_uniform/shape/1Ї
1sequential_2/random_zoom_1/stateful_uniform/shapePack1sequential_2/random_zoom_1/strided_slice:output:0<sequential_2/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_2/random_zoom_1/stateful_uniform/shapeД
/sequential_2/random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?21
/sequential_2/random_zoom_1/stateful_uniform/minД
/sequential_2/random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠ї?21
/sequential_2/random_zoom_1/stateful_uniform/max░
1sequential_2/random_zoom_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_2/random_zoom_1/stateful_uniform/ConstЁ
0sequential_2/random_zoom_1/stateful_uniform/ProdProd:sequential_2/random_zoom_1/stateful_uniform/shape:output:0:sequential_2/random_zoom_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom_1/stateful_uniform/Prodф
2sequential_2/random_zoom_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom_1/stateful_uniform/Cast/x█
2sequential_2/random_zoom_1/stateful_uniform/Cast_1Cast9sequential_2/random_zoom_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 24
2sequential_2/random_zoom_1/stateful_uniform/Cast_1Я
:sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkipRngReadAndSkipCsequential_2_random_zoom_1_stateful_uniform_rngreadandskip_resource;sequential_2/random_zoom_1/stateful_uniform/Cast/x:output:06sequential_2/random_zoom_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:2<
:sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip╠
?sequential_2/random_zoom_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential_2/random_zoom_1/stateful_uniform/strided_slice/stackл
Asequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_1л
Asequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_2­
9sequential_2/random_zoom_1/stateful_uniform/strided_sliceStridedSliceBsequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip:value:0Hsequential_2/random_zoom_1/stateful_uniform/strided_slice/stack:output:0Jsequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_1:output:0Jsequential_2/random_zoom_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2;
9sequential_2/random_zoom_1/stateful_uniform/strided_sliceЖ
3sequential_2/random_zoom_1/stateful_uniform/BitcastBitcastBsequential_2/random_zoom_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type025
3sequential_2/random_zoom_1/stateful_uniform/Bitcastл
Asequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stackн
Csequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_1н
Csequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_2У
;sequential_2/random_zoom_1/stateful_uniform/strided_slice_1StridedSliceBsequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip:value:0Jsequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack:output:0Lsequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_1:output:0Lsequential_2/random_zoom_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2=
;sequential_2/random_zoom_1/stateful_uniform/strided_slice_1­
5sequential_2/random_zoom_1/stateful_uniform/Bitcast_1BitcastDsequential_2/random_zoom_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type027
5sequential_2/random_zoom_1/stateful_uniform/Bitcast_1о
Hsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2J
Hsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2/algя
Dsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2:sequential_2/random_zoom_1/stateful_uniform/shape:output:0>sequential_2/random_zoom_1/stateful_uniform/Bitcast_1:output:0<sequential_2/random_zoom_1/stateful_uniform/Bitcast:output:0Qsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         2F
Dsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2■
/sequential_2/random_zoom_1/stateful_uniform/subSub8sequential_2/random_zoom_1/stateful_uniform/max:output:08sequential_2/random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_2/random_zoom_1/stateful_uniform/subЪ
/sequential_2/random_zoom_1/stateful_uniform/mulMulMsequential_2/random_zoom_1/stateful_uniform/StatelessRandomUniformV2:output:03sequential_2/random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         21
/sequential_2/random_zoom_1/stateful_uniform/mulё
+sequential_2/random_zoom_1/stateful_uniformAddV23sequential_2/random_zoom_1/stateful_uniform/mul:z:08sequential_2/random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         2-
+sequential_2/random_zoom_1/stateful_uniformњ
&sequential_2/random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_2/random_zoom_1/concat/axisа
!sequential_2/random_zoom_1/concatConcatV2/sequential_2/random_zoom_1/stateful_uniform:z:0/sequential_2/random_zoom_1/stateful_uniform:z:0/sequential_2/random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2#
!sequential_2/random_zoom_1/concatХ
,sequential_2/random_zoom_1/zoom_matrix/ShapeShape*sequential_2/random_zoom_1/concat:output:0*
T0*
_output_shapes
:2.
,sequential_2/random_zoom_1/zoom_matrix/Shape┬
:sequential_2/random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_2/random_zoom_1/zoom_matrix/strided_slice/stackк
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1к
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2╠
4sequential_2/random_zoom_1/zoom_matrix/strided_sliceStridedSlice5sequential_2/random_zoom_1/zoom_matrix/Shape:output:0Csequential_2/random_zoom_1/zoom_matrix/strided_slice/stack:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_2/random_zoom_1/zoom_matrix/strided_sliceА
,sequential_2/random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2.
,sequential_2/random_zoom_1/zoom_matrix/sub/yя
*sequential_2/random_zoom_1/zoom_matrix/subSub%sequential_2/random_zoom_1/Cast_1:y:05sequential_2/random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_2/random_zoom_1/zoom_matrix/subЕ
0sequential_2/random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_2/random_zoom_1/zoom_matrix/truediv/yэ
.sequential_2/random_zoom_1/zoom_matrix/truedivRealDiv.sequential_2/random_zoom_1/zoom_matrix/sub:z:09sequential_2/random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_2/random_zoom_1/zoom_matrix/truedivЛ
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stackН
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1Н
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2Њ
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_1StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_1Ц
.sequential_2/random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?20
.sequential_2/random_zoom_1/zoom_matrix/sub_1/xЈ
,sequential_2/random_zoom_1/zoom_matrix/sub_1Sub7sequential_2/random_zoom_1/zoom_matrix/sub_1/x:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         2.
,sequential_2/random_zoom_1/zoom_matrix/sub_1э
*sequential_2/random_zoom_1/zoom_matrix/mulMul2sequential_2/random_zoom_1/zoom_matrix/truediv:z:00sequential_2/random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         2,
*sequential_2/random_zoom_1/zoom_matrix/mulЦ
.sequential_2/random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?20
.sequential_2/random_zoom_1/zoom_matrix/sub_2/yР
,sequential_2/random_zoom_1/zoom_matrix/sub_2Sub#sequential_2/random_zoom_1/Cast:y:07sequential_2/random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_2/random_zoom_1/zoom_matrix/sub_2Г
2sequential_2/random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_2/random_zoom_1/zoom_matrix/truediv_1/y 
0sequential_2/random_zoom_1/zoom_matrix/truediv_1RealDiv0sequential_2/random_zoom_1/zoom_matrix/sub_2:z:0;sequential_2/random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom_1/zoom_matrix/truediv_1Л
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stackН
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1Н
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2Њ
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_2StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_2Ц
.sequential_2/random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?20
.sequential_2/random_zoom_1/zoom_matrix/sub_3/xЈ
,sequential_2/random_zoom_1/zoom_matrix/sub_3Sub7sequential_2/random_zoom_1/zoom_matrix/sub_3/x:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2.
,sequential_2/random_zoom_1/zoom_matrix/sub_3§
,sequential_2/random_zoom_1/zoom_matrix/mul_1Mul4sequential_2/random_zoom_1/zoom_matrix/truediv_1:z:00sequential_2/random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         2.
,sequential_2/random_zoom_1/zoom_matrix/mul_1Л
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stackН
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1Н
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2Њ
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_3StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_3░
5sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1Ъ
3sequential_2/random_zoom_1/zoom_matrix/zeros/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0>sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_2/random_zoom_1/zoom_matrix/zeros/packedГ
2sequential_2/random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_2/random_zoom_1/zoom_matrix/zeros/ConstЉ
,sequential_2/random_zoom_1/zoom_matrix/zerosFill<sequential_2/random_zoom_1/zoom_matrix/zeros/packed:output:0;sequential_2/random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2.
,sequential_2/random_zoom_1/zoom_matrix/zeros┤
7sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1Ц
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed▒
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/ConstЎ
.sequential_2/random_zoom_1/zoom_matrix/zeros_1Fill>sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         20
.sequential_2/random_zoom_1/zoom_matrix/zeros_1Л
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stackН
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1Н
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2Њ
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_4StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_4┤
7sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1Ц
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed▒
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/ConstЎ
.sequential_2/random_zoom_1/zoom_matrix/zeros_2Fill>sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         20
.sequential_2/random_zoom_1/zoom_matrix/zeros_2ф
2sequential_2/random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom_1/zoom_matrix/concat/axis№
-sequential_2/random_zoom_1/zoom_matrix/concatConcatV2?sequential_2/random_zoom_1/zoom_matrix/strided_slice_3:output:05sequential_2/random_zoom_1/zoom_matrix/zeros:output:0.sequential_2/random_zoom_1/zoom_matrix/mul:z:07sequential_2/random_zoom_1/zoom_matrix/zeros_1:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_4:output:00sequential_2/random_zoom_1/zoom_matrix/mul_1:z:07sequential_2/random_zoom_1/zoom_matrix/zeros_2:output:0;sequential_2/random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2/
-sequential_2/random_zoom_1/zoom_matrix/concatЯ
*sequential_2/random_zoom_1/transform/ShapeShapeXsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2,
*sequential_2/random_zoom_1/transform/ShapeЙ
8sequential_2/random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/random_zoom_1/transform/strided_slice/stack┬
:sequential_2/random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom_1/transform/strided_slice/stack_1┬
:sequential_2/random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom_1/transform/strided_slice/stack_2г
2sequential_2/random_zoom_1/transform/strided_sliceStridedSlice3sequential_2/random_zoom_1/transform/Shape:output:0Asequential_2/random_zoom_1/transform/strided_slice/stack:output:0Csequential_2/random_zoom_1/transform/strided_slice/stack_1:output:0Csequential_2/random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_2/random_zoom_1/transform/strided_sliceД
/sequential_2/random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_2/random_zoom_1/transform/fill_valueъ
?sequential_2/random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:06sequential_2/random_zoom_1/zoom_matrix/concat:output:0;sequential_2/random_zoom_1/transform/strided_slice:output:08sequential_2/random_zoom_1/transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_2/random_zoom_1/transform/ImageProjectiveTransformV3m
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_2/Cast/xq
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_2/Cast_1/xп
rescaling_2/mulMulTsequential_2/random_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_2/mulЏ
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_2/add░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOp═
conv2d_3/Conv2DConv2Drescaling_2/add:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤*
paddingSAME*
strides
2
conv2d_3/Conv2DД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp«
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤2
conv2d_3/BiasAdd}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:         ┤┤2
conv2d_3/ReluК
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:         ZZ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOpп
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ *
paddingSAME*
strides
2
conv2d_4/Conv2DД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOpг
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ 2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         ZZ 2
conv2d_4/ReluК
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:         -- *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOpп
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@*
paddingSAME*
strides
2
conv2d_5/Conv2DД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpг
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         --@2
conv2d_5/ReluК
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_1/dropout/Const│
dropout_1/dropout/MulMul max_pooling2d_5/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_1/dropout/Mulѓ
dropout_1/dropout/ShapeShape max_pooling2d_5/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape┌
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЅ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_1/dropout/GreaterEqual/yЬ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2 
dropout_1/dropout/GreaterEqualЦ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_1/dropout/Castф
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_1/dropout/Mul_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     y  2
flatten_1/Constю
flatten_1/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђЫ2
flatten_1/Reshapeе
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*!
_output_shapes
:ђЫђ*
dtype02
dense_2/MatMul/ReadVariableOpа
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_2/MatMulЦ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
dense_2/BiasAdd/ReadVariableOpб
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
dense_2/Reluд
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђi*
dtype02
dense_3/MatMul/ReadVariableOpЪ
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
dense_3/MatMulц
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02 
dense_3/BiasAdd/ReadVariableOpА
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         i2

IdentityЙ
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpD^sequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkipk^sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgr^sequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter?^sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip;^sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         ┤┤: : : : : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2і
Csequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkipCsequential_2/random_flip_1/stateful_uniform_full_int/RngReadAndSkip2п
jsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgjsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2Т
qsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterqsequential_2/random_flip_1/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2ђ
>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip2x
:sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip:sequential_2/random_zoom_1/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ь
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_759862

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760959

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш
§
D__inference_conv2d_3_layer_call_and_return_conditional_losses_759686

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ┤┤2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
т3
Ѓ
H__inference_sequential_3_layer_call_and_return_conditional_losses_760081
sequential_2_input)
conv2d_3_760050:
conv2d_3_760052:)
conv2d_4_760056: 
conv2d_4_760058: )
conv2d_5_760062: @
conv2d_5_760064:@#
dense_2_760070:ђЫђ
dense_2_760072:	ђ!
dense_3_760075:	ђi
dense_3_760077:i
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallщ
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7592112
sequential_2/PartitionedCallЅ
rescaling_2/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_7596732
rescaling_2/PartitionedCall┐
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0conv2d_3_760050conv2d_3_760052*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_7596862"
 conv2d_3/StatefulPartitionedCallЌ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596962!
max_pooling2d_3/PartitionedCall┴
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_760056conv2d_4_760058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_7597092"
 conv2d_4/StatefulPartitionedCallЌ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         -- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7597192!
max_pooling2d_4/PartitionedCall┴
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_760062conv2d_5_760064*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         --@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_7597322"
 conv2d_5/StatefulPartitionedCallЌ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7597422!
max_pooling2d_5/PartitionedCallё
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7597492
dropout_1/PartitionedCallЭ
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђЫ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_7597572
flatten_1/PartitionedCall»
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_760070dense_2_760072*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7597702!
dense_2/StatefulPartitionedCall┤
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_760075dense_3_760077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7597862!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityч
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
ђ
ѓ
2__inference_random_rotation_1_layer_call_fn_761167

inputs
unknown:	
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7594552
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760919

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Џё
┬
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_759324

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЂ
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        2
strided_slice_1/stackЁ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2В
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        2
strided_slice_2/stackЁ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2В
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1v
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/shape/1А
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *═╠ї?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/ConstЎ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/xі
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1┘
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkipќ
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stackџ
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1џ
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2╬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_sliceЎ
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcastџ
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stackъ
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1ъ
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2к
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1Ъ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1а
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/alg╝
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         2+
)stateful_uniform/StatelessRandomUniformV2њ
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub│
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         2
stateful_uniform/mulў
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         2
stateful_uniform\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЎ
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
concate
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
zoom_matrix/Shapeї
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
zoom_matrix/strided_slice/stackљ
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_1љ
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!zoom_matrix/strided_slice/stack_2ф
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
zoom_matrix/strided_slicek
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub/yr
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/subs
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv/yІ
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truedivЏ
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_1/stackЪ
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_1/stack_1Ъ
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_1/stack_2ы
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_1o
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_1/xБ
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/sub_1І
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         2
zoom_matrix/mulo
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_2/yv
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/sub_2w
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
zoom_matrix/truediv_1/yЊ
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2
zoom_matrix/truediv_1Џ
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_2/stackЪ
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_2/stack_1Ъ
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_2/stack_2ы
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_2o
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
zoom_matrix/sub_3/xБ
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/sub_3Љ
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         2
zoom_matrix/mul_1Џ
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2#
!zoom_matrix/strided_slice_3/stackЪ
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_3/stack_1Ъ
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_3/stack_2ы
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_3z
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros/packed/1│
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros/packedw
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros/ConstЦ
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros~
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_1/packed/1╣
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_1/packed{
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_1/ConstГ
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros_1Џ
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2#
!zoom_matrix/strided_slice_4/stackЪ
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2%
#zoom_matrix/strided_slice_4/stack_1Ъ
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2%
#zoom_matrix/strided_slice_4/stack_2ы
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2
zoom_matrix/strided_slice_4~
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/zeros_2/packed/1╣
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2
zoom_matrix/zeros_2/packed{
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zoom_matrix/zeros_2/ConstГ
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         2
zoom_matrix/zeros_2t
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
zoom_matrix/concat/axisр
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2
zoom_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shapeѕ
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stackї
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1ї
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2і
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_value┼
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ┤┤*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3ъ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
б
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_760601

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
■
Я
H__inference_sequential_2_layer_call_and_return_conditional_losses_759591
random_flip_1_input"
random_flip_1_759581:	&
random_rotation_1_759584:	"
random_zoom_1_759587:	
identityѕб%random_flip_1/StatefulPartitionedCallб)random_rotation_1/StatefulPartitionedCallб%random_zoom_1/StatefulPartitionedCallг
%random_flip_1/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_1_inputrandom_flip_1_759581*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7595262'
%random_flip_1/StatefulPartitionedCallО
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_1/StatefulPartitionedCall:output:0random_rotation_1_759584*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7594552+
)random_rotation_1/StatefulPartitionedCall╦
%random_zoom_1/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_1/StatefulPartitionedCall:output:0random_zoom_1_759587*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7593242'
%random_zoom_1/StatefulPartitionedCallЊ
IdentityIdentity.random_zoom_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identity╩
NoOpNoOp&^random_flip_1/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall&^random_zoom_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ┤┤: : : 2N
%random_flip_1/StatefulPartitionedCall%random_flip_1/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall2N
%random_zoom_1/StatefulPartitionedCall%random_zoom_1/StatefulPartitionedCall:f b
1
_output_shapes
:         ┤┤
-
_user_specified_namerandom_flip_1_input
Ф
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_760999

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_761004

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         --@:W S
/
_output_shapes
:         --@
 
_user_specified_nameinputs
┬
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760924

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         ZZ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
сf
 
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761155

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityѕб(stateful_uniform_full_int/RngReadAndSkipбOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgбVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterї
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shapeї
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Constй
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prodє
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/xЦ
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1є
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkipе
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stackг
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1г
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2ё
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice┤
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcastг
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack░
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1░
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2Ч
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1║
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1ђ
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg«
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_likeЂ
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ѕ
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_sliceН
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ┤┤25
3stateless_random_flip_left_right/control_dependency╝
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/ShapeХ
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stack║
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1║
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2е
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceы
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shape├
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/min├
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2?
=stateless_random_flip_left_right/stateless_random_uniform/maxі
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterг
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg╩
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:         2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2Х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/subМ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         2?
=stateless_random_flip_left_right/stateless_random_uniform/mulИ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         2;
9stateless_random_flip_left_right/stateless_random_uniformд
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1д
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2д
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3ђ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shapeЉ
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2*
(stateless_random_flip_left_right/Reshapeк
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2(
&stateless_random_flip_left_right/Roundг
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axisЎ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ┤┤2,
*stateless_random_flip_left_right/ReverseV2­
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ┤┤2&
$stateless_random_flip_left_right/mulЋ
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2(
&stateless_random_flip_left_right/sub/xЖ
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2&
$stateless_random_flip_left_right/subч
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ┤┤2(
&stateless_random_flip_left_right/mul_1у
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ┤┤2&
$stateless_random_flip_left_right/addЇ
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identityц
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ┤┤: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2б
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Љ
Э
C__inference_dense_2_layer_call_and_return_conditional_losses_761062

inputs3
matmul_readvariableop_resource:ђЫђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpљ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ђЫђ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђЫ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђЫ
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_3_layer_call_fn_760909

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596002
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ќ
V
-__inference_sequential_2_layer_call_fn_759214
random_flip_1_input
identityЯ
PartitionedCallPartitionedCallrandom_flip_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7592112
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:f b
1
_output_shapes
:         ┤┤
-
_user_specified_namerandom_flip_1_input
Ш
§
D__inference_conv2d_3_layer_call_and_return_conditional_losses_760904

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ┤┤2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ┤┤2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ┤┤2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_5_layer_call_fn_760989

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7596442
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ж
§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_760984

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         --@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         --@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         -- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         -- 
 
_user_specified_nameinputs
Ж
§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_759732

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         --@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         --@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         --@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         -- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         -- 
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_4_layer_call_fn_760949

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7596222
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ь
L
0__inference_max_pooling2d_4_layer_call_fn_760954

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         -- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7597192
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         -- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ZZ :W S
/
_output_shapes
:         ZZ 
 
_user_specified_nameinputs
§

Ј
-__inference_sequential_3_layer_call_fn_760181

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ђЫђ
	unknown_6:	ђ
	unknown_7:	ђi
	unknown_8:i
identityѕбStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7597932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_759600

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_759719

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         -- *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         -- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         ZZ :W S
/
_output_shapes
:         ZZ 
 
_user_specified_nameinputs
Е
c
G__inference_rescaling_2_layer_call_and_return_conditional_losses_760884

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
р
F
*__inference_dropout_1_layer_call_fn_761009

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7597492
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы
L
0__inference_max_pooling2d_3_layer_call_fn_760914

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596962
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         ZZ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Е
c
G__inference_rescaling_2_layer_call_and_return_conditional_losses_759673

inputs
identityU
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
Cast/xY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/xf
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
mulk
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
adde
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
я7
Ф
H__inference_sequential_3_layer_call_and_return_conditional_losses_759985

inputs!
sequential_2_759946:	!
sequential_2_759948:	!
sequential_2_759950:	)
conv2d_3_759954:
conv2d_3_759956:)
conv2d_4_759960: 
conv2d_4_759962: )
conv2d_5_759966: @
conv2d_5_759968:@#
dense_2_759974:ђЫђ
dense_2_759976:	ђ!
dense_3_759979:	ђi
dense_3_759981:i
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallб$sequential_2/StatefulPartitionedCallК
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_759946sequential_2_759948sequential_2_759950*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_7595512&
$sequential_2/StatefulPartitionedCallЉ
rescaling_2/PartitionedCallPartitionedCall-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_7596732
rescaling_2/PartitionedCall┐
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0conv2d_3_759954conv2d_3_759956*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_7596862"
 conv2d_3/StatefulPartitionedCallЌ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7596962!
max_pooling2d_3/PartitionedCall┴
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_759960conv2d_4_759962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_7597092"
 conv2d_4/StatefulPartitionedCallЌ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         -- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_7597192!
max_pooling2d_4/PartitionedCall┴
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_759966conv2d_5_759968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         --@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_7597322"
 conv2d_5/StatefulPartitionedCallЌ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7597422!
max_pooling2d_5/PartitionedCallю
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_7598622#
!dropout_1/StatefulPartitionedCallђ
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђЫ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_7597572
flatten_1/PartitionedCall»
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_759974dense_2_759976*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7597702!
dense_2/StatefulPartitionedCall┤
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_759979dense_3_759981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_7597862!
dense_3/StatefulPartitionedCallЃ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityк
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         ┤┤: : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Д
i
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761171

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ж
§
D__inference_conv2d_4_layer_call_and_return_conditional_losses_759709

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ZZ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ZZ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ZZ
 
_user_specified_nameinputs
Ж
§
D__inference_conv2d_4_layer_call_and_return_conditional_losses_760944

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ZZ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ZZ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ZZ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ZZ
 
_user_specified_nameinputs
ь
L
0__inference_max_pooling2d_5_layer_call_fn_760994

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_7597422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         --@:W S
/
_output_shapes
:         --@
 
_user_specified_nameinputs
ы

њ
$__inference_signature_wrapper_760156
sequential_2_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ђЫђ
	unknown_6:	ђ
	unknown_7:	ђi
	unknown_8:i
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_7591852
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ┤┤: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         ┤┤
,
_user_specified_namesequential_2_input
Е

ш
C__inference_dense_3_layer_call_and_return_conditional_losses_761081

inputs1
matmul_readvariableop_resource:	ђi-
biasadd_readvariableop_resource:i
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђi*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:i*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         i2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ќ┤
и
"__inference__traced_restore_761707
file_prefix:
 assignvariableop_conv2d_3_kernel:.
 assignvariableop_1_conv2d_3_bias:<
"assignvariableop_2_conv2d_4_kernel: .
 assignvariableop_3_conv2d_4_bias: <
"assignvariableop_4_conv2d_5_kernel: @.
 assignvariableop_5_conv2d_5_bias:@6
!assignvariableop_6_dense_2_kernel:ђЫђ.
assignvariableop_7_dense_2_bias:	ђ4
!assignvariableop_8_dense_3_kernel:	ђi-
assignvariableop_9_dense_3_bias:i'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: *
assignvariableop_15_variable:	,
assignvariableop_16_variable_1:	,
assignvariableop_17_variable_2:	#
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: D
*assignvariableop_22_adam_conv2d_3_kernel_m:6
(assignvariableop_23_adam_conv2d_3_bias_m:D
*assignvariableop_24_adam_conv2d_4_kernel_m: 6
(assignvariableop_25_adam_conv2d_4_bias_m: D
*assignvariableop_26_adam_conv2d_5_kernel_m: @6
(assignvariableop_27_adam_conv2d_5_bias_m:@>
)assignvariableop_28_adam_dense_2_kernel_m:ђЫђ6
'assignvariableop_29_adam_dense_2_bias_m:	ђ<
)assignvariableop_30_adam_dense_3_kernel_m:	ђi5
'assignvariableop_31_adam_dense_3_bias_m:iD
*assignvariableop_32_adam_conv2d_3_kernel_v:6
(assignvariableop_33_adam_conv2d_3_bias_v:D
*assignvariableop_34_adam_conv2d_4_kernel_v: 6
(assignvariableop_35_adam_conv2d_4_bias_v: D
*assignvariableop_36_adam_conv2d_5_kernel_v: @6
(assignvariableop_37_adam_conv2d_5_bias_v:@>
)assignvariableop_38_adam_dense_2_kernel_v:ђЫђ6
'assignvariableop_39_adam_dense_2_bias_v:	ђ<
)assignvariableop_40_adam_dense_3_kernel_v:	ђi5
'assignvariableop_41_adam_dense_3_bias_v:i
identity_43ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9║
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*к
value╝B╣+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesС
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЁ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*┬
_output_shapes»
г:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6д
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ц
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8д
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9ц
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ц
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Д
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Д
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13д
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14«
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15ц
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16д
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17д
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18А
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19А
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Б
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Б
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22▓
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_3_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23░
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_3_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▓
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_4_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25░
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_4_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▓
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_5_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27░
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_5_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▒
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_2_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29»
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_2_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▒
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_3_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31»
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_3_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▓
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_3_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33░
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_3_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34▓
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_4_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35░
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_4_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36▓
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_5_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37░
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_5_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38▒
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_2_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39»
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_2_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▒
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_3_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41»
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_3_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЩ
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42f
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_43Р
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412(
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
ы
J
.__inference_random_zoom_1_layer_call_fn_761294

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7592082
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Њ
q
H__inference_sequential_2_layer_call_and_return_conditional_losses_759578
random_flip_1_input
identity§
random_flip_1/PartitionedCallPartitionedCallrandom_flip_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_1_layer_call_and_return_conditional_losses_7591962
random_flip_1/PartitionedCallю
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_7592022#
!random_rotation_1/PartitionedCallћ
random_zoom_1/PartitionedCallPartitionedCall*random_rotation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ┤┤* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_7592082
random_zoom_1/PartitionedCallё
IdentityIdentity&random_zoom_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         ┤┤2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ┤┤:f b
1
_output_shapes
:         ┤┤
-
_user_specified_namerandom_flip_1_input"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╩
serving_defaultХ
[
sequential_2_inputE
$serving_default_sequential_2_input:0         ┤┤;
dense_30
StatefulPartitionedCall:0         itensorflow/serving/predict:»ќ
Ѕ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
о__call__
+О&call_and_return_all_conditional_losses
п_default_save_signature"
_tf_keras_sequential
М
layer-0
layer-1
layer-2
regularization_losses
trainable_variables
	variables
	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"
_tf_keras_sequential
Д
regularization_losses
trainable_variables
	variables
	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"
_tf_keras_layer
й

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
П__call__
+я&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
$regularization_losses
%trainable_variables
&	variables
'	keras_api
▀__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
й

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
р__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
.regularization_losses
/trainable_variables
0	variables
1	keras_api
с__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
й

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
т__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
8regularization_losses
9trainable_variables
:	variables
;	keras_api
у__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
<regularization_losses
=trainable_variables
>	variables
?	keras_api
ж__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
в__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
ь__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
№__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
Џ
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem┬m├(m─)m┼2mк3mКDm╚Em╔Jm╩Km╦v╠v═(v╬)v¤2vл3vЛDvмEvМJvнKvН"
	optimizer
 "
trackable_list_wrapper
f
0
1
(2
)3
24
35
D6
E7
J8
K9"
trackable_list_wrapper
f
0
1
(2
)3
24
35
D6
E7
J8
K9"
trackable_list_wrapper
╬
Umetrics
regularization_losses
Vnon_trainable_variables
Wlayer_metrics
trainable_variables
	variables

Xlayers
Ylayer_regularization_losses
о__call__
п_default_save_signature
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
-
ыserving_default"
signature_map
▒
Z_rng
[regularization_losses
\trainable_variables
]	variables
^	keras_api
Ы__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
▒
__rng
`regularization_losses
atrainable_variables
b	variables
c	keras_api
З__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
▒
d_rng
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
Ш__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
imetrics
regularization_losses
jnon_trainable_variables
klayer_metrics
trainable_variables
	variables

llayers
mlayer_regularization_losses
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
nmetrics
regularization_losses
onon_trainable_variables
player_metrics
trainable_variables
	variables

qlayers
rlayer_regularization_losses
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_3/kernel
:2conv2d_3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
smetrics
 regularization_losses
tnon_trainable_variables
ulayer_metrics
!trainable_variables
"	variables

vlayers
wlayer_regularization_losses
П__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
xmetrics
$regularization_losses
ynon_trainable_variables
zlayer_metrics
%trainable_variables
&	variables

{layers
|layer_regularization_losses
▀__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_4/kernel
: 2conv2d_4/bias
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
▓
}metrics
*regularization_losses
~non_trainable_variables
layer_metrics
+trainable_variables
,	variables
ђlayers
 Ђlayer_regularization_losses
р__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ѓmetrics
.regularization_losses
Ѓnon_trainable_variables
ёlayer_metrics
/trainable_variables
0	variables
Ёlayers
 єlayer_regularization_losses
с__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_5/kernel
:@2conv2d_5/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
х
Єmetrics
4regularization_losses
ѕnon_trainable_variables
Ѕlayer_metrics
5trainable_variables
6	variables
іlayers
 Іlayer_regularization_losses
т__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
їmetrics
8regularization_losses
Їnon_trainable_variables
јlayer_metrics
9trainable_variables
:	variables
Јlayers
 љlayer_regularization_losses
у__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Љmetrics
<regularization_losses
њnon_trainable_variables
Њlayer_metrics
=trainable_variables
>	variables
ћlayers
 Ћlayer_regularization_losses
ж__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ќmetrics
@regularization_losses
Ќnon_trainable_variables
ўlayer_metrics
Atrainable_variables
B	variables
Ўlayers
 џlayer_regularization_losses
в__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
#:!ђЫђ2dense_2/kernel
:ђ2dense_2/bias
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
х
Џmetrics
Fregularization_losses
юnon_trainable_variables
Юlayer_metrics
Gtrainable_variables
H	variables
ъlayers
 Ъlayer_regularization_losses
ь__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
!:	ђi2dense_3/kernel
:i2dense_3/bias
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
х
аmetrics
Lregularization_losses
Аnon_trainable_variables
бlayer_metrics
Mtrainable_variables
N	variables
Бlayers
 цlayer_regularization_losses
№__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
Ц0
д1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
v
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
11"
trackable_list_wrapper
 "
trackable_list_wrapper
/
Д
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
еmetrics
[regularization_losses
Еnon_trainable_variables
фlayer_metrics
\trainable_variables
]	variables
Фlayers
 гlayer_regularization_losses
Ы__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
/
Г
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
«metrics
`regularization_losses
»non_trainable_variables
░layer_metrics
atrainable_variables
b	variables
▒layers
 ▓layer_regularization_losses
З__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
/
│
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
┤metrics
eregularization_losses
хnon_trainable_variables
Хlayer_metrics
ftrainable_variables
g	variables
иlayers
 Иlayer_regularization_losses
Ш__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
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
R

╣total

║count
╗	variables
╝	keras_api"
_tf_keras_metric
c

йtotal

Йcount
┐
_fn_kwargs
└	variables
┴	keras_api"
_tf_keras_metric
:	2Variable
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
:	2Variable
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
:	2Variable
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
:  (2total
:  (2count
0
╣0
║1"
trackable_list_wrapper
.
╗	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
й0
Й1"
trackable_list_wrapper
.
└	variables"
_generic_user_object
.:,2Adam/conv2d_3/kernel/m
 :2Adam/conv2d_3/bias/m
.:, 2Adam/conv2d_4/kernel/m
 : 2Adam/conv2d_4/bias/m
.:, @2Adam/conv2d_5/kernel/m
 :@2Adam/conv2d_5/bias/m
(:&ђЫђ2Adam/dense_2/kernel/m
 :ђ2Adam/dense_2/bias/m
&:$	ђi2Adam/dense_3/kernel/m
:i2Adam/dense_3/bias/m
.:,2Adam/conv2d_3/kernel/v
 :2Adam/conv2d_3/bias/v
.:, 2Adam/conv2d_4/kernel/v
 : 2Adam/conv2d_4/bias/v
.:, @2Adam/conv2d_5/kernel/v
 :@2Adam/conv2d_5/bias/v
(:&ђЫђ2Adam/dense_2/kernel/v
 :ђ2Adam/dense_2/bias/v
&:$	ђi2Adam/dense_3/kernel/v
:i2Adam/dense_3/bias/v
ѓ2 
-__inference_sequential_3_layer_call_fn_759816
-__inference_sequential_3_layer_call_fn_760181
-__inference_sequential_3_layer_call_fn_760212
-__inference_sequential_3_layer_call_fn_760045└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
H__inference_sequential_3_layer_call_and_return_conditional_losses_760260
H__inference_sequential_3_layer_call_and_return_conditional_losses_760581
H__inference_sequential_3_layer_call_and_return_conditional_losses_760081
H__inference_sequential_3_layer_call_and_return_conditional_losses_760123└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ОBн
!__inference__wrapped_model_759185sequential_2_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ѓ2 
-__inference_sequential_2_layer_call_fn_759214
-__inference_sequential_2_layer_call_fn_760586
-__inference_sequential_2_layer_call_fn_760597
-__inference_sequential_2_layer_call_fn_759571└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
H__inference_sequential_2_layer_call_and_return_conditional_losses_760601
H__inference_sequential_2_layer_call_and_return_conditional_losses_760871
H__inference_sequential_2_layer_call_and_return_conditional_losses_759578
H__inference_sequential_2_layer_call_and_return_conditional_losses_759591└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
о2М
,__inference_rescaling_2_layer_call_fn_760876б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_rescaling_2_layer_call_and_return_conditional_losses_760884б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_conv2d_3_layer_call_fn_760893б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_3_layer_call_and_return_conditional_losses_760904б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_3_layer_call_fn_760909
0__inference_max_pooling2d_3_layer_call_fn_760914б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760919
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760924б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_conv2d_4_layer_call_fn_760933б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_4_layer_call_and_return_conditional_losses_760944б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_4_layer_call_fn_760949
0__inference_max_pooling2d_4_layer_call_fn_760954б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760959
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760964б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_conv2d_5_layer_call_fn_760973б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_5_layer_call_and_return_conditional_losses_760984б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ї2Ѕ
0__inference_max_pooling2d_5_layer_call_fn_760989
0__inference_max_pooling2d_5_layer_call_fn_760994б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┬2┐
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_760999
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_761004б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њ2Ј
*__inference_dropout_1_layer_call_fn_761009
*__inference_dropout_1_layer_call_fn_761014┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╚2┼
E__inference_dropout_1_layer_call_and_return_conditional_losses_761019
E__inference_dropout_1_layer_call_and_return_conditional_losses_761031┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_flatten_1_layer_call_fn_761036б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_flatten_1_layer_call_and_return_conditional_losses_761042б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_2_layer_call_fn_761051б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_2_layer_call_and_return_conditional_losses_761062б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_3_layer_call_fn_761071б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_3_layer_call_and_return_conditional_losses_761081б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
оBМ
$__inference_signature_wrapper_760156sequential_2_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џ2Ќ
.__inference_random_flip_1_layer_call_fn_761086
.__inference_random_flip_1_layer_call_fn_761093┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761097
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761155┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
б2Ъ
2__inference_random_rotation_1_layer_call_fn_761160
2__inference_random_rotation_1_layer_call_fn_761167┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761171
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761289┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
џ2Ќ
.__inference_random_zoom_1_layer_call_fn_761294
.__inference_random_zoom_1_layer_call_fn_761301┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761305
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761407┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 г
!__inference__wrapped_model_759185є
()23DEJKEбB
;б8
6і3
sequential_2_input         ┤┤
ф "1ф.
,
dense_3!і
dense_3         iИ
D__inference_conv2d_3_layer_call_and_return_conditional_losses_760904p9б6
/б,
*і'
inputs         ┤┤
ф "/б,
%і"
0         ┤┤
џ љ
)__inference_conv2d_3_layer_call_fn_760893c9б6
/б,
*і'
inputs         ┤┤
ф ""і         ┤┤┤
D__inference_conv2d_4_layer_call_and_return_conditional_losses_760944l()7б4
-б*
(і%
inputs         ZZ
ф "-б*
#і 
0         ZZ 
џ ї
)__inference_conv2d_4_layer_call_fn_760933_()7б4
-б*
(і%
inputs         ZZ
ф " і         ZZ ┤
D__inference_conv2d_5_layer_call_and_return_conditional_losses_760984l237б4
-б*
(і%
inputs         -- 
ф "-б*
#і 
0         --@
џ ї
)__inference_conv2d_5_layer_call_fn_760973_237б4
-б*
(і%
inputs         -- 
ф " і         --@д
C__inference_dense_2_layer_call_and_return_conditional_losses_761062_DE1б.
'б$
"і
inputs         ђЫ
ф "&б#
і
0         ђ
џ ~
(__inference_dense_2_layer_call_fn_761051RDE1б.
'б$
"і
inputs         ђЫ
ф "і         ђц
C__inference_dense_3_layer_call_and_return_conditional_losses_761081]JK0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         i
џ |
(__inference_dense_3_layer_call_fn_761071PJK0б-
&б#
!і
inputs         ђ
ф "і         iх
E__inference_dropout_1_layer_call_and_return_conditional_losses_761019l;б8
1б.
(і%
inputs         @
p 
ф "-б*
#і 
0         @
џ х
E__inference_dropout_1_layer_call_and_return_conditional_losses_761031l;б8
1б.
(і%
inputs         @
p
ф "-б*
#і 
0         @
џ Ї
*__inference_dropout_1_layer_call_fn_761009_;б8
1б.
(і%
inputs         @
p 
ф " і         @Ї
*__inference_dropout_1_layer_call_fn_761014_;б8
1б.
(і%
inputs         @
p
ф " і         @Ф
E__inference_flatten_1_layer_call_and_return_conditional_losses_761042b7б4
-б*
(і%
inputs         @
ф "'б$
і
0         ђЫ
џ Ѓ
*__inference_flatten_1_layer_call_fn_761036U7б4
-б*
(і%
inputs         @
ф "і         ђЫЬ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760919ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╣
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_760924j9б6
/б,
*і'
inputs         ┤┤
ф "-б*
#і 
0         ZZ
џ к
0__inference_max_pooling2d_3_layer_call_fn_760909ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Љ
0__inference_max_pooling2d_3_layer_call_fn_760914]9б6
/б,
*і'
inputs         ┤┤
ф " і         ZZЬ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760959ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ и
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_760964h7б4
-б*
(і%
inputs         ZZ 
ф "-б*
#і 
0         -- 
џ к
0__inference_max_pooling2d_4_layer_call_fn_760949ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ј
0__inference_max_pooling2d_4_layer_call_fn_760954[7б4
-б*
(і%
inputs         ZZ 
ф " і         -- Ь
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_760999ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ и
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_761004h7б4
-б*
(і%
inputs         --@
ф "-б*
#і 
0         @
џ к
0__inference_max_pooling2d_5_layer_call_fn_760989ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ј
0__inference_max_pooling2d_5_layer_call_fn_760994[7б4
-б*
(і%
inputs         --@
ф " і         @й
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761097p=б:
3б0
*і'
inputs         ┤┤
p 
ф "/б,
%і"
0         ┤┤
џ ┴
I__inference_random_flip_1_layer_call_and_return_conditional_losses_761155tД=б:
3б0
*і'
inputs         ┤┤
p
ф "/б,
%і"
0         ┤┤
џ Ћ
.__inference_random_flip_1_layer_call_fn_761086c=б:
3б0
*і'
inputs         ┤┤
p 
ф ""і         ┤┤Ў
.__inference_random_flip_1_layer_call_fn_761093gД=б:
3б0
*і'
inputs         ┤┤
p
ф ""і         ┤┤┴
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761171p=б:
3б0
*і'
inputs         ┤┤
p 
ф "/б,
%і"
0         ┤┤
џ ┼
M__inference_random_rotation_1_layer_call_and_return_conditional_losses_761289tГ=б:
3б0
*і'
inputs         ┤┤
p
ф "/б,
%і"
0         ┤┤
џ Ў
2__inference_random_rotation_1_layer_call_fn_761160c=б:
3б0
*і'
inputs         ┤┤
p 
ф ""і         ┤┤Ю
2__inference_random_rotation_1_layer_call_fn_761167gГ=б:
3б0
*і'
inputs         ┤┤
p
ф ""і         ┤┤й
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761305p=б:
3б0
*і'
inputs         ┤┤
p 
ф "/б,
%і"
0         ┤┤
џ ┴
I__inference_random_zoom_1_layer_call_and_return_conditional_losses_761407t│=б:
3б0
*і'
inputs         ┤┤
p
ф "/б,
%і"
0         ┤┤
џ Ћ
.__inference_random_zoom_1_layer_call_fn_761294c=б:
3б0
*і'
inputs         ┤┤
p 
ф ""і         ┤┤Ў
.__inference_random_zoom_1_layer_call_fn_761301g│=б:
3б0
*і'
inputs         ┤┤
p
ф ""і         ┤┤и
G__inference_rescaling_2_layer_call_and_return_conditional_losses_760884l9б6
/б,
*і'
inputs         ┤┤
ф "/б,
%і"
0         ┤┤
џ Ј
,__inference_rescaling_2_layer_call_fn_760876_9б6
/б,
*і'
inputs         ┤┤
ф ""і         ┤┤╬
H__inference_sequential_2_layer_call_and_return_conditional_losses_759578ЂNбK
DбA
7і4
random_flip_1_input         ┤┤
p 

 
ф "/б,
%і"
0         ┤┤
џ о
H__inference_sequential_2_layer_call_and_return_conditional_losses_759591ЅДГ│NбK
DбA
7і4
random_flip_1_input         ┤┤
p

 
ф "/б,
%і"
0         ┤┤
џ └
H__inference_sequential_2_layer_call_and_return_conditional_losses_760601tAб>
7б4
*і'
inputs         ┤┤
p 

 
ф "/б,
%і"
0         ┤┤
џ ╚
H__inference_sequential_2_layer_call_and_return_conditional_losses_760871|ДГ│Aб>
7б4
*і'
inputs         ┤┤
p

 
ф "/б,
%і"
0         ┤┤
џ Ц
-__inference_sequential_2_layer_call_fn_759214tNбK
DбA
7і4
random_flip_1_input         ┤┤
p 

 
ф ""і         ┤┤Г
-__inference_sequential_2_layer_call_fn_759571|ДГ│NбK
DбA
7і4
random_flip_1_input         ┤┤
p

 
ф ""і         ┤┤ў
-__inference_sequential_2_layer_call_fn_760586gAб>
7б4
*і'
inputs         ┤┤
p 

 
ф ""і         ┤┤а
-__inference_sequential_2_layer_call_fn_760597oДГ│Aб>
7б4
*і'
inputs         ┤┤
p

 
ф ""і         ┤┤¤
H__inference_sequential_3_layer_call_and_return_conditional_losses_760081ѓ
()23DEJKMбJ
Cб@
6і3
sequential_2_input         ┤┤
p 

 
ф "%б"
і
0         i
џ Н
H__inference_sequential_3_layer_call_and_return_conditional_losses_760123ѕДГ│()23DEJKMбJ
Cб@
6і3
sequential_2_input         ┤┤
p

 
ф "%б"
і
0         i
џ ┬
H__inference_sequential_3_layer_call_and_return_conditional_losses_760260v
()23DEJKAб>
7б4
*і'
inputs         ┤┤
p 

 
ф "%б"
і
0         i
џ ╚
H__inference_sequential_3_layer_call_and_return_conditional_losses_760581|ДГ│()23DEJKAб>
7б4
*і'
inputs         ┤┤
p

 
ф "%б"
і
0         i
џ д
-__inference_sequential_3_layer_call_fn_759816u
()23DEJKMбJ
Cб@
6і3
sequential_2_input         ┤┤
p 

 
ф "і         iг
-__inference_sequential_3_layer_call_fn_760045{ДГ│()23DEJKMбJ
Cб@
6і3
sequential_2_input         ┤┤
p

 
ф "і         iџ
-__inference_sequential_3_layer_call_fn_760181i
()23DEJKAб>
7б4
*і'
inputs         ┤┤
p 

 
ф "і         iа
-__inference_sequential_3_layer_call_fn_760212oДГ│()23DEJKAб>
7б4
*і'
inputs         ┤┤
p

 
ф "і         i┼
$__inference_signature_wrapper_760156ю
()23DEJK[бX
б 
QфN
L
sequential_2_input6і3
sequential_2_input         ┤┤"1ф.
,
dense_3!і
dense_3         i