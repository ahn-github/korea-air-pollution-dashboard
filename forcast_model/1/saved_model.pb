ř
­))
:
Add
x"T
y"T
z"T"
Ttype:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
P
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
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
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
1
Square
x"T
y"T"
Ttype:

2	
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ţ
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.12.02v1.12.0-rc2-3-ga6d8ffae09ř
w
lstm_3_inputPlaceholder* 
shape:˙˙˙˙˙˙˙˙˙*
dtype0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
.lstm_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      * 
_class
loc:@lstm_3/kernel*
dtype0*
_output_shapes
:

,lstm_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *n×\ž* 
_class
loc:@lstm_3/kernel*
dtype0

,lstm_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *n×\>* 
_class
loc:@lstm_3/kernel*
dtype0*
_output_shapes
: 
é
6lstm_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform.lstm_3/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@lstm_3/kernel*
seed2 *
dtype0*
_output_shapes
:	
Ň
,lstm_3/kernel/Initializer/random_uniform/subSub,lstm_3/kernel/Initializer/random_uniform/max,lstm_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@lstm_3/kernel
ĺ
,lstm_3/kernel/Initializer/random_uniform/mulMul6lstm_3/kernel/Initializer/random_uniform/RandomUniform,lstm_3/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@lstm_3/kernel*
_output_shapes
:	
×
(lstm_3/kernel/Initializer/random_uniformAdd,lstm_3/kernel/Initializer/random_uniform/mul,lstm_3/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@lstm_3/kernel*
_output_shapes
:	
Ş
lstm_3/kernelVarHandleOp*
shape:	*
dtype0*
_output_shapes
: *
shared_namelstm_3/kernel* 
_class
loc:@lstm_3/kernel*
	container 
k
.lstm_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_3/kernel*
_output_shapes
: 

lstm_3/kernel/AssignAssignVariableOplstm_3/kernel(lstm_3/kernel/Initializer/random_uniform* 
_class
loc:@lstm_3/kernel*
dtype0

!lstm_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/kernel* 
_class
loc:@lstm_3/kernel*
dtype0*
_output_shapes
:	
´
7lstm_3/recurrent_kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"       **
_class 
loc:@lstm_3/recurrent_kernel
§
6lstm_3/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    **
_class 
loc:@lstm_3/recurrent_kernel*
dtype0*
_output_shapes
: 
Š
8lstm_3/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  ?**
_class 
loc:@lstm_3/recurrent_kernel*
dtype0*
_output_shapes
: 

Flstm_3/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7lstm_3/recurrent_kernel/Initializer/random_normal/shape*
_output_shapes
:	 *

seed *
T0**
_class 
loc:@lstm_3/recurrent_kernel*
seed2 *
dtype0

5lstm_3/recurrent_kernel/Initializer/random_normal/mulMulFlstm_3/recurrent_kernel/Initializer/random_normal/RandomStandardNormal8lstm_3/recurrent_kernel/Initializer/random_normal/stddev**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
:	 *
T0
ý
1lstm_3/recurrent_kernel/Initializer/random_normalAdd5lstm_3/recurrent_kernel/Initializer/random_normal/mul6lstm_3/recurrent_kernel/Initializer/random_normal/mean*
T0**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
:	 
Ô
&lstm_3/recurrent_kernel/Initializer/QrQr1lstm_3/recurrent_kernel/Initializer/random_normal*
T0**
_class 
loc:@lstm_3/recurrent_kernel*)
_output_shapes
:	 :  *
full_matrices( 
ł
,lstm_3/recurrent_kernel/Initializer/DiagPartDiagPart(lstm_3/recurrent_kernel/Initializer/Qr:1*
T0**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
: 
Ż
(lstm_3/recurrent_kernel/Initializer/SignSign,lstm_3/recurrent_kernel/Initializer/DiagPart*
T0**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
: 
Ö
'lstm_3/recurrent_kernel/Initializer/mulMul&lstm_3/recurrent_kernel/Initializer/Qr(lstm_3/recurrent_kernel/Initializer/Sign*
T0**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
:	 
Ŕ
Clstm_3/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       **
_class 
loc:@lstm_3/recurrent_kernel

>lstm_3/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose'lstm_3/recurrent_kernel/Initializer/mulClstm_3/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
:	 *
Tperm0
Ž
1lstm_3/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"       **
_class 
loc:@lstm_3/recurrent_kernel*
dtype0*
_output_shapes
:

+lstm_3/recurrent_kernel/Initializer/ReshapeReshape>lstm_3/recurrent_kernel/Initializer/matrix_transpose/transpose1lstm_3/recurrent_kernel/Initializer/Reshape/shape*
_output_shapes
:	 *
T0*
Tshape0**
_class 
loc:@lstm_3/recurrent_kernel

+lstm_3/recurrent_kernel/Initializer/mul_1/xConst*
_output_shapes
: *
valueB
 *  ?**
_class 
loc:@lstm_3/recurrent_kernel*
dtype0
ŕ
)lstm_3/recurrent_kernel/Initializer/mul_1Mul+lstm_3/recurrent_kernel/Initializer/mul_1/x+lstm_3/recurrent_kernel/Initializer/Reshape**
_class 
loc:@lstm_3/recurrent_kernel*
_output_shapes
:	 *
T0
Č
lstm_3/recurrent_kernelVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namelstm_3/recurrent_kernel**
_class 
loc:@lstm_3/recurrent_kernel*
	container *
shape:	 

8lstm_3/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_3/recurrent_kernel*
_output_shapes
: 
Ż
lstm_3/recurrent_kernel/AssignAssignVariableOplstm_3/recurrent_kernel)lstm_3/recurrent_kernel/Initializer/mul_1**
_class 
loc:@lstm_3/recurrent_kernel*
dtype0
°
+lstm_3/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm_3/recurrent_kernel**
_class 
loc:@lstm_3/recurrent_kernel*
dtype0*
_output_shapes
:	 

lstm_3/bias/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@lstm_3/bias*
dtype0

lstm_3/bias/Initializer/onesConst*
valueB *  ?*
_class
loc:@lstm_3/bias*
dtype0*
_output_shapes
: 

lstm_3/bias/Initializer/zeros_1Const*
valueB@*    *
_class
loc:@lstm_3/bias*
dtype0*
_output_shapes
:@

#lstm_3/bias/Initializer/concat/axisConst*
value	B : *
_class
loc:@lstm_3/bias*
dtype0*
_output_shapes
: 

lstm_3/bias/Initializer/concatConcatV2lstm_3/bias/Initializer/zeroslstm_3/bias/Initializer/oneslstm_3/bias/Initializer/zeros_1#lstm_3/bias/Initializer/concat/axis*
N*
_output_shapes	
:*

Tidx0*
T0*
_class
loc:@lstm_3/bias
 
lstm_3/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namelstm_3/bias*
_class
loc:@lstm_3/bias*
	container *
shape:
g
,lstm_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_3/bias*
_output_shapes
: 

lstm_3/bias/AssignAssignVariableOplstm_3/biaslstm_3/bias/Initializer/concat*
_class
loc:@lstm_3/bias*
dtype0

lstm_3/bias/Read/ReadVariableOpReadVariableOplstm_3/bias*
_output_shapes	
:*
_class
loc:@lstm_3/bias*
dtype0
X
lstm_3/ShapeShapelstm_3_input*
_output_shapes
:*
T0*
out_type0
d
lstm_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

lstm_3/strided_sliceStridedSlicelstm_3/Shapelstm_3/strided_slice/stacklstm_3/strided_slice/stack_1lstm_3/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
T
lstm_3/zeros/mul/yConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm_3/zeros/mulMullstm_3/strided_slicelstm_3/zeros/mul/y*
T0*
_output_shapes
: 
V
lstm_3/zeros/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
a
lstm_3/zeros/LessLesslstm_3/zeros/mullstm_3/zeros/Less/y*
T0*
_output_shapes
: 
W
lstm_3/zeros/packed/1Const*
_output_shapes
: *
value	B : *
dtype0

lstm_3/zeros/packedPacklstm_3/strided_slicelstm_3/zeros/packed/1*
T0*

axis *
N*
_output_shapes
:
W
lstm_3/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm_3/zerosFilllstm_3/zeros/packedlstm_3/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
V
lstm_3/zeros_1/mul/yConst*
value	B : *
dtype0*
_output_shapes
: 
f
lstm_3/zeros_1/mulMullstm_3/strided_slicelstm_3/zeros_1/mul/y*
T0*
_output_shapes
: 
X
lstm_3/zeros_1/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
g
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mullstm_3/zeros_1/Less/y*
T0*
_output_shapes
: 
Y
lstm_3/zeros_1/packed/1Const*
value	B : *
dtype0*
_output_shapes
: 

lstm_3/zeros_1/packedPacklstm_3/strided_slicelstm_3/zeros_1/packed/1*
T0*

axis *
N*
_output_shapes
:
Y
lstm_3/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm_3/zeros_1Filllstm_3/zeros_1/packedlstm_3/zeros_1/Const*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
j
lstm_3/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm_3/transpose	Transposelstm_3_inputlstm_3/transpose/perm*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
^
lstm_3/Shape_1Shapelstm_3/transpose*
_output_shapes
:*
T0*
out_type0
f
lstm_3/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ś
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1lstm_3/strided_slice_1/stacklstm_3/strided_slice_1/stack_1lstm_3/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
f
lstm_3/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
š
lstm_3/strided_slice_2StridedSlicelstm_3/transposelstm_3/strided_slice_2/stacklstm_3/strided_slice_2/stack_1lstm_3/strided_slice_2/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Index0
d
lstm_3/ReadVariableOpReadVariableOplstm_3/kernel*
dtype0*
_output_shapes
:	
m
lstm_3/strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ľ
lstm_3/strided_slice_3StridedSlicelstm_3/ReadVariableOplstm_3/strided_slice_3/stacklstm_3/strided_slice_3/stack_1lstm_3/strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

: 

lstm_3/MatMulMatMullstm_3/strided_slice_2lstm_3/strided_slice_3*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
f
lstm_3/ReadVariableOp_1ReadVariableOplstm_3/kernel*
dtype0*
_output_shapes
:	
m
lstm_3/strided_slice_4/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_4/stack_1Const*
valueB"    @   *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ˇ
lstm_3/strided_slice_4StridedSlicelstm_3/ReadVariableOp_1lstm_3/strided_slice_4/stacklstm_3/strided_slice_4/stack_1lstm_3/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

: 
Ą
lstm_3/MatMul_1MatMullstm_3/strided_slice_2lstm_3/strided_slice_4*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
f
lstm_3/ReadVariableOp_2ReadVariableOplstm_3/kernel*
dtype0*
_output_shapes
:	
m
lstm_3/strided_slice_5/stackConst*
valueB"    @   *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_5/stack_1Const*
dtype0*
_output_shapes
:*
valueB"    `   
o
lstm_3/strided_slice_5/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ˇ
lstm_3/strided_slice_5StridedSlicelstm_3/ReadVariableOp_2lstm_3/strided_slice_5/stacklstm_3/strided_slice_5/stack_1lstm_3/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

: 
Ą
lstm_3/MatMul_2MatMullstm_3/strided_slice_2lstm_3/strided_slice_5*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
f
lstm_3/ReadVariableOp_3ReadVariableOplstm_3/kernel*
_output_shapes
:	*
dtype0
m
lstm_3/strided_slice_6/stackConst*
valueB"    `   *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_3/strided_slice_6/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
ˇ
lstm_3/strided_slice_6StridedSlicelstm_3/ReadVariableOp_3lstm_3/strided_slice_6/stacklstm_3/strided_slice_6/stack_1lstm_3/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

: 
Ą
lstm_3/MatMul_3MatMullstm_3/strided_slice_2lstm_3/strided_slice_6*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
`
lstm_3/ReadVariableOp_4ReadVariableOplstm_3/bias*
dtype0*
_output_shapes	
:
f
lstm_3/strided_slice_7/stackConst*
dtype0*
_output_shapes
:*
valueB: 
h
lstm_3/strided_slice_7/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ł
lstm_3/strided_slice_7StridedSlicelstm_3/ReadVariableOp_4lstm_3/strided_slice_7/stacklstm_3/strided_slice_7/stack_1lstm_3/strided_slice_7/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

lstm_3/BiasAddBiasAddlstm_3/MatMullstm_3/strided_slice_7*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
`
lstm_3/ReadVariableOp_5ReadVariableOplstm_3/bias*
dtype0*
_output_shapes	
:
f
lstm_3/strided_slice_8/stackConst*
dtype0*
_output_shapes
:*
valueB: 
h
lstm_3/strided_slice_8/stack_1Const*
_output_shapes
:*
valueB:@*
dtype0
h
lstm_3/strided_slice_8/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ł
lstm_3/strided_slice_8StridedSlicelstm_3/ReadVariableOp_5lstm_3/strided_slice_8/stacklstm_3/strided_slice_8/stack_1lstm_3/strided_slice_8/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

lstm_3/BiasAdd_1BiasAddlstm_3/MatMul_1lstm_3/strided_slice_8*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
`
lstm_3/ReadVariableOp_6ReadVariableOplstm_3/bias*
dtype0*
_output_shapes	
:
f
lstm_3/strided_slice_9/stackConst*
valueB:@*
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_9/stack_1Const*
valueB:`*
dtype0*
_output_shapes
:
h
lstm_3/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ł
lstm_3/strided_slice_9StridedSlicelstm_3/ReadVariableOp_6lstm_3/strided_slice_9/stacklstm_3/strided_slice_9/stack_1lstm_3/strided_slice_9/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

lstm_3/BiasAdd_2BiasAddlstm_3/MatMul_2lstm_3/strided_slice_9*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
`
lstm_3/ReadVariableOp_7ReadVariableOplstm_3/bias*
dtype0*
_output_shapes	
:
g
lstm_3/strided_slice_10/stackConst*
dtype0*
_output_shapes
:*
valueB:`
i
lstm_3/strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
lstm_3/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
lstm_3/strided_slice_10StridedSlicelstm_3/ReadVariableOp_7lstm_3/strided_slice_10/stacklstm_3/strided_slice_10/stack_1lstm_3/strided_slice_10/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask

lstm_3/BiasAdd_3BiasAddlstm_3/MatMul_3lstm_3/strided_slice_10*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
p
lstm_3/ReadVariableOp_8ReadVariableOplstm_3/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_3/strided_slice_11/stackConst*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_11/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_11/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ť
lstm_3/strided_slice_11StridedSlicelstm_3/ReadVariableOp_8lstm_3/strided_slice_11/stacklstm_3/strided_slice_11/stack_1lstm_3/strided_slice_11/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0

lstm_3/MatMul_4MatMullstm_3/zeroslstm_3/strided_slice_11*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
d

lstm_3/addAddlstm_3/BiasAddlstm_3/MatMul_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Q
lstm_3/mul/xConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
]

lstm_3/mulMullstm_3/mul/x
lstm_3/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/add_1/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
a
lstm_3/add_1Add
lstm_3/mullstm_3/add_1/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Q
lstm_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
S
lstm_3/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
w
lstm_3/clip_by_value/MinimumMinimumlstm_3/add_1lstm_3/Const_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
}
lstm_3/clip_by_valueMaximumlstm_3/clip_by_value/Minimumlstm_3/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
p
lstm_3/ReadVariableOp_9ReadVariableOplstm_3/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_3/strided_slice_12/stackConst*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_12/stack_1Const*
dtype0*
_output_shapes
:*
valueB"    @   
p
lstm_3/strided_slice_12/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ť
lstm_3/strided_slice_12StridedSlicelstm_3/ReadVariableOp_9lstm_3/strided_slice_12/stacklstm_3/strided_slice_12/stack_1lstm_3/strided_slice_12/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0

lstm_3/MatMul_5MatMullstm_3/zeroslstm_3/strided_slice_12*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
h
lstm_3/add_2Addlstm_3/BiasAdd_1lstm_3/MatMul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚL>
c
lstm_3/mul_1Mullstm_3/mul_1/xlstm_3/add_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/add_3/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
c
lstm_3/add_3Addlstm_3/mul_1lstm_3/add_3/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
S
lstm_3/Const_3Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
y
lstm_3/clip_by_value_1/MinimumMinimumlstm_3/add_3lstm_3/Const_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/clip_by_value_1Maximumlstm_3/clip_by_value_1/Minimumlstm_3/Const_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
m
lstm_3/mul_2Mullstm_3/clip_by_value_1lstm_3/zeros_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
q
lstm_3/ReadVariableOp_10ReadVariableOplstm_3/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_3/strided_slice_13/stackConst*
valueB"    @   *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_13/stack_1Const*
valueB"    `   *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_13/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
ź
lstm_3/strided_slice_13StridedSlicelstm_3/ReadVariableOp_10lstm_3/strided_slice_13/stacklstm_3/strided_slice_13/stack_1lstm_3/strided_slice_13/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0

lstm_3/MatMul_6MatMullstm_3/zeroslstm_3/strided_slice_13*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
h
lstm_3/add_4Addlstm_3/BiasAdd_2lstm_3/MatMul_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/TanhTanhlstm_3/add_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
h
lstm_3/mul_3Mullstm_3/clip_by_valuelstm_3/Tanh*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
a
lstm_3/add_5Addlstm_3/mul_2lstm_3/mul_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/ReadVariableOp_11ReadVariableOplstm_3/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_3/strided_slice_14/stackConst*
valueB"    `   *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_14/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_3/strided_slice_14/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ź
lstm_3/strided_slice_14StridedSlicelstm_3/ReadVariableOp_11lstm_3/strided_slice_14/stacklstm_3/strided_slice_14/stack_1lstm_3/strided_slice_14/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0*
shrink_axis_mask 

lstm_3/MatMul_7MatMullstm_3/zeroslstm_3/strided_slice_14*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
h
lstm_3/add_6Addlstm_3/BiasAdd_3lstm_3/MatMul_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_3/mul_4/xConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
c
lstm_3/mul_4Mullstm_3/mul_4/xlstm_3/add_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_3/add_7/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
c
lstm_3/add_7Addlstm_3/mul_4lstm_3/add_7/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_3/Const_4Const*
_output_shapes
: *
valueB
 *    *
dtype0
S
lstm_3/Const_5Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
lstm_3/clip_by_value_2/MinimumMinimumlstm_3/add_7lstm_3/Const_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/clip_by_value_2Maximumlstm_3/clip_by_value_2/Minimumlstm_3/Const_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
U
lstm_3/Tanh_1Tanhlstm_3/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_3/mul_5Mullstm_3/clip_by_value_2lstm_3/Tanh_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ë
lstm_3/TensorArrayTensorArrayV3lstm_3/strided_slice_1*
identical_element_shapes(* 
tensor_array_name	output_ta*
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
ě
lstm_3/TensorArray_1TensorArrayV3lstm_3/strided_slice_1*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name
input_ta*
dtype0*
_output_shapes

:: 
o
lstm_3/TensorArrayUnstack/ShapeShapelstm_3/transpose*
_output_shapes
:*
T0*
out_type0
w
-lstm_3/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/lstm_3/TensorArrayUnstack/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/lstm_3/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ű
'lstm_3/TensorArrayUnstack/strided_sliceStridedSlicelstm_3/TensorArrayUnstack/Shape-lstm_3/TensorArrayUnstack/strided_slice/stack/lstm_3/TensorArrayUnstack/strided_slice/stack_1/lstm_3/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
g
%lstm_3/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%lstm_3/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Đ
lstm_3/TensorArrayUnstack/rangeRange%lstm_3/TensorArrayUnstack/range/start'lstm_3/TensorArrayUnstack/strided_slice%lstm_3/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

Alstm_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_3/TensorArray_1lstm_3/TensorArrayUnstack/rangelstm_3/transposelstm_3/TensorArray_1:1*
T0*#
_class
loc:@lstm_3/transpose*
_output_shapes
: 
M
lstm_3/timeConst*
value	B : *
dtype0*
_output_shapes
: 
a
lstm_3/while/maximum_iterationsConst*
dtype0*
_output_shapes
: *
value	B :
`
lstm_3/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
ś
lstm_3/while/EnterEnterlstm_3/while/iteration_counter**

frame_namelstm_3/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations 
Ľ
lstm_3/while/Enter_1Enterlstm_3/time*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 
Ž
lstm_3/while/Enter_2Enterlstm_3/TensorArray:1**

frame_namelstm_3/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations 
ˇ
lstm_3/while/Enter_3Enterlstm_3/zeros*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_3/while/while_context*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
š
lstm_3/while/Enter_4Enterlstm_3/zeros_1*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_3/while/while_context*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
lstm_3/while/MergeMergelstm_3/while/Enterlstm_3/while/NextIteration*
T0*
N*
_output_shapes
: : 
}
lstm_3/while/Merge_1Mergelstm_3/while/Enter_1lstm_3/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
}
lstm_3/while/Merge_2Mergelstm_3/while/Enter_2lstm_3/while/NextIteration_2*
N*
_output_shapes
: : *
T0

lstm_3/while/Merge_3Mergelstm_3/while/Enter_3lstm_3/while/NextIteration_3*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : *
T0*
N

lstm_3/while/Merge_4Mergelstm_3/while/Enter_4lstm_3/while/NextIteration_4*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : 
g
lstm_3/while/LessLesslstm_3/while/Mergelstm_3/while/Less/Enter*
T0*
_output_shapes
: 
ź
lstm_3/while/Less/EnterEnterlstm_3/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 
m
lstm_3/while/Less_1Lesslstm_3/while/Merge_1lstm_3/while/Less_1/Enter*
_output_shapes
: *
T0
ľ
lstm_3/while/Less_1/EnterEnterlstm_3/strided_slice_1*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 
e
lstm_3/while/LogicalAnd
LogicalAndlstm_3/while/Lesslstm_3/while/Less_1*
_output_shapes
: 
R
lstm_3/while/LoopCondLoopCondlstm_3/while/LogicalAnd*
_output_shapes
: 

lstm_3/while/SwitchSwitchlstm_3/while/Mergelstm_3/while/LoopCond*
_output_shapes
: : *
T0*%
_class
loc:@lstm_3/while/Merge

lstm_3/while/Switch_1Switchlstm_3/while/Merge_1lstm_3/while/LoopCond*'
_class
loc:@lstm_3/while/Merge_1*
_output_shapes
: : *
T0

lstm_3/while/Switch_2Switchlstm_3/while/Merge_2lstm_3/while/LoopCond*
T0*'
_class
loc:@lstm_3/while/Merge_2*
_output_shapes
: : 
ş
lstm_3/while/Switch_3Switchlstm_3/while/Merge_3lstm_3/while/LoopCond*
T0*'
_class
loc:@lstm_3/while/Merge_3*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
ş
lstm_3/while/Switch_4Switchlstm_3/while/Merge_4lstm_3/while/LoopCond*
T0*'
_class
loc:@lstm_3/while/Merge_4*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
Y
lstm_3/while/IdentityIdentitylstm_3/while/Switch:1*
_output_shapes
: *
T0
]
lstm_3/while/Identity_1Identitylstm_3/while/Switch_1:1*
T0*
_output_shapes
: 
]
lstm_3/while/Identity_2Identitylstm_3/while/Switch_2:1*
T0*
_output_shapes
: 
n
lstm_3/while/Identity_3Identitylstm_3/while/Switch_3:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
n
lstm_3/while/Identity_4Identitylstm_3/while/Switch_4:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_3/while/add/yConst^lstm_3/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lstm_3/while/addAddlstm_3/while/Identitylstm_3/while/add/y*
T0*
_output_shapes
: 
Đ
lstm_3/while/TensorArrayReadV3TensorArrayReadV3$lstm_3/while/TensorArrayReadV3/Enterlstm_3/while/Identity_1&lstm_3/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
$lstm_3/while/TensorArrayReadV3/EnterEnterlstm_3/TensorArray_1*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
:
í
&lstm_3/while/TensorArrayReadV3/Enter_1EnterAlstm_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 

lstm_3/while/ReadVariableOpReadVariableOp!lstm_3/while/ReadVariableOp/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	
´
!lstm_3/while/ReadVariableOp/EnterEnterlstm_3/kernel*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 

 lstm_3/while/strided_slice/stackConst^lstm_3/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

"lstm_3/while/strided_slice/stack_1Const^lstm_3/while/Identity*
_output_shapes
:*
valueB"        *
dtype0

"lstm_3/while/strided_slice/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ë
lstm_3/while/strided_sliceStridedSlicelstm_3/while/ReadVariableOp lstm_3/while/strided_slice/stack"lstm_3/while/strided_slice/stack_1"lstm_3/while/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

: 
ą
lstm_3/while/MatMulMatMullstm_3/while/TensorArrayReadV3lstm_3/while/strided_slice*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

lstm_3/while/ReadVariableOp_1ReadVariableOp!lstm_3/while/ReadVariableOp/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	

"lstm_3/while/strided_slice_1/stackConst^lstm_3/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_1/stack_1Const^lstm_3/while/Identity*
valueB"    @   *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_1/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_3/while/strided_slice_1StridedSlicelstm_3/while/ReadVariableOp_1"lstm_3/while/strided_slice_1/stack$lstm_3/while/strided_slice_1/stack_1$lstm_3/while/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

: 
ľ
lstm_3/while/MatMul_1MatMullstm_3/while/TensorArrayReadV3lstm_3/while/strided_slice_1*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

lstm_3/while/ReadVariableOp_2ReadVariableOp!lstm_3/while/ReadVariableOp/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	

"lstm_3/while/strided_slice_2/stackConst^lstm_3/while/Identity*
_output_shapes
:*
valueB"    @   *
dtype0

$lstm_3/while/strided_slice_2/stack_1Const^lstm_3/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_2/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_3/while/strided_slice_2StridedSlicelstm_3/while/ReadVariableOp_2"lstm_3/while/strided_slice_2/stack$lstm_3/while/strided_slice_2/stack_1$lstm_3/while/strided_slice_2/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

: *
T0*
Index0
ľ
lstm_3/while/MatMul_2MatMullstm_3/while/TensorArrayReadV3lstm_3/while/strided_slice_2*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

lstm_3/while/ReadVariableOp_3ReadVariableOp!lstm_3/while/ReadVariableOp/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	

"lstm_3/while/strided_slice_3/stackConst^lstm_3/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_3/stack_1Const^lstm_3/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_3/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_3/while/strided_slice_3StridedSlicelstm_3/while/ReadVariableOp_3"lstm_3/while/strided_slice_3/stack$lstm_3/while/strided_slice_3/stack_1$lstm_3/while/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

: 
ľ
lstm_3/while/MatMul_3MatMullstm_3/while/TensorArrayReadV3lstm_3/while/strided_slice_3*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

lstm_3/while/ReadVariableOp_4ReadVariableOp#lstm_3/while/ReadVariableOp_4/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes	
:
´
#lstm_3/while/ReadVariableOp_4/EnterEnterlstm_3/bias*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 

"lstm_3/while/strided_slice_4/stackConst^lstm_3/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_4/stack_1Const^lstm_3/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_4/stack_2Const^lstm_3/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_3/while/strided_slice_4StridedSlicelstm_3/while/ReadVariableOp_4"lstm_3/while/strided_slice_4/stack$lstm_3/while/strided_slice_4/stack_1$lstm_3/while/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

lstm_3/while/BiasAddBiasAddlstm_3/while/MatMullstm_3/while/strided_slice_4*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/ReadVariableOp_5ReadVariableOp#lstm_3/while/ReadVariableOp_4/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes	
:

"lstm_3/while/strided_slice_5/stackConst^lstm_3/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_5/stack_1Const^lstm_3/while/Identity*
dtype0*
_output_shapes
:*
valueB:@

$lstm_3/while/strided_slice_5/stack_2Const^lstm_3/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_3/while/strided_slice_5StridedSlicelstm_3/while/ReadVariableOp_5"lstm_3/while/strided_slice_5/stack$lstm_3/while/strided_slice_5/stack_1$lstm_3/while/strided_slice_5/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

lstm_3/while/BiasAdd_1BiasAddlstm_3/while/MatMul_1lstm_3/while/strided_slice_5*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/ReadVariableOp_6ReadVariableOp#lstm_3/while/ReadVariableOp_4/Enter^lstm_3/while/Identity*
_output_shapes	
:*
dtype0

"lstm_3/while/strided_slice_6/stackConst^lstm_3/while/Identity*
valueB:@*
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_6/stack_1Const^lstm_3/while/Identity*
valueB:`*
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_6/stack_2Const^lstm_3/while/Identity*
dtype0*
_output_shapes
:*
valueB:
Ń
lstm_3/while/strided_slice_6StridedSlicelstm_3/while/ReadVariableOp_6"lstm_3/while/strided_slice_6/stack$lstm_3/while/strided_slice_6/stack_1$lstm_3/while/strided_slice_6/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

lstm_3/while/BiasAdd_2BiasAddlstm_3/while/MatMul_2lstm_3/while/strided_slice_6*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/while/ReadVariableOp_7ReadVariableOp#lstm_3/while/ReadVariableOp_4/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes	
:

"lstm_3/while/strided_slice_7/stackConst^lstm_3/while/Identity*
valueB:`*
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_7/stack_1Const^lstm_3/while/Identity*
_output_shapes
:*
valueB: *
dtype0

$lstm_3/while/strided_slice_7/stack_2Const^lstm_3/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_3/while/strided_slice_7StridedSlicelstm_3/while/ReadVariableOp_7"lstm_3/while/strided_slice_7/stack$lstm_3/while/strided_slice_7/stack_1$lstm_3/while/strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0

lstm_3/while/BiasAdd_3BiasAddlstm_3/while/MatMul_3lstm_3/while/strided_slice_7*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/while/ReadVariableOp_8ReadVariableOp#lstm_3/while/ReadVariableOp_8/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	 
Ŕ
#lstm_3/while/ReadVariableOp_8/EnterEnterlstm_3/recurrent_kernel*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_3/while/while_context*
_output_shapes
: 

"lstm_3/while/strided_slice_8/stackConst^lstm_3/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_8/stack_1Const^lstm_3/while/Identity*
dtype0*
_output_shapes
:*
valueB"        

$lstm_3/while/strided_slice_8/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_3/while/strided_slice_8StridedSlicelstm_3/while/ReadVariableOp_8"lstm_3/while/strided_slice_8/stack$lstm_3/while/strided_slice_8/stack_1$lstm_3/while/strided_slice_8/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask
Ž
lstm_3/while/MatMul_4MatMullstm_3/while/Identity_3lstm_3/while/strided_slice_8*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
x
lstm_3/while/add_1Addlstm_3/while/BiasAddlstm_3/while/MatMul_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
o
lstm_3/while/mul/xConst^lstm_3/while/Identity*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
q
lstm_3/while/mulMullstm_3/while/mul/xlstm_3/while/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
q
lstm_3/while/add_2/yConst^lstm_3/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
s
lstm_3/while/add_2Addlstm_3/while/mullstm_3/while/add_2/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
o
lstm_3/while/ConstConst^lstm_3/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
q
lstm_3/while/Const_1Const^lstm_3/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

"lstm_3/while/clip_by_value/MinimumMinimumlstm_3/while/add_2lstm_3/while/Const_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/while/clip_by_valueMaximum"lstm_3/while/clip_by_value/Minimumlstm_3/while/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/ReadVariableOp_9ReadVariableOp#lstm_3/while/ReadVariableOp_8/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	 

"lstm_3/while/strided_slice_9/stackConst^lstm_3/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_9/stack_1Const^lstm_3/while/Identity*
valueB"    @   *
dtype0*
_output_shapes
:

$lstm_3/while/strided_slice_9/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_3/while/strided_slice_9StridedSlicelstm_3/while/ReadVariableOp_9"lstm_3/while/strided_slice_9/stack$lstm_3/while/strided_slice_9/stack_1$lstm_3/while/strided_slice_9/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask 
Ž
lstm_3/while/MatMul_5MatMullstm_3/while/Identity_3lstm_3/while/strided_slice_9*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
z
lstm_3/while/add_3Addlstm_3/while/BiasAdd_1lstm_3/while/MatMul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/while/mul_1/xConst^lstm_3/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *ÍĚL>
u
lstm_3/while/mul_1Mullstm_3/while/mul_1/xlstm_3/while/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/while/add_4/yConst^lstm_3/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *   ?
u
lstm_3/while/add_4Addlstm_3/while/mul_1lstm_3/while/add_4/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
q
lstm_3/while/Const_2Const^lstm_3/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
q
lstm_3/while/Const_3Const^lstm_3/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$lstm_3/while/clip_by_value_1/MinimumMinimumlstm_3/while/add_4lstm_3/while/Const_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/while/clip_by_value_1Maximum$lstm_3/while/clip_by_value_1/Minimumlstm_3/while/Const_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_3/while/mul_2Mullstm_3/while/clip_by_value_1lstm_3/while/Identity_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/ReadVariableOp_10ReadVariableOp#lstm_3/while/ReadVariableOp_8/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	 

#lstm_3/while/strided_slice_10/stackConst^lstm_3/while/Identity*
_output_shapes
:*
valueB"    @   *
dtype0

%lstm_3/while/strided_slice_10/stack_1Const^lstm_3/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

%lstm_3/while/strided_slice_10/stack_2Const^lstm_3/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ú
lstm_3/while/strided_slice_10StridedSlicelstm_3/while/ReadVariableOp_10#lstm_3/while/strided_slice_10/stack%lstm_3/while/strided_slice_10/stack_1%lstm_3/while/strided_slice_10/stack_2*
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
Ż
lstm_3/while/MatMul_6MatMullstm_3/while/Identity_3lstm_3/while/strided_slice_10*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
z
lstm_3/while/add_5Addlstm_3/while/BiasAdd_2lstm_3/while/MatMul_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
_
lstm_3/while/TanhTanhlstm_3/while/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
z
lstm_3/while/mul_3Mullstm_3/while/clip_by_valuelstm_3/while/Tanh*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
s
lstm_3/while/add_6Addlstm_3/while/mul_2lstm_3/while/mul_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/ReadVariableOp_11ReadVariableOp#lstm_3/while/ReadVariableOp_8/Enter^lstm_3/while/Identity*
dtype0*
_output_shapes
:	 

#lstm_3/while/strided_slice_11/stackConst^lstm_3/while/Identity*
_output_shapes
:*
valueB"    `   *
dtype0

%lstm_3/while/strided_slice_11/stack_1Const^lstm_3/while/Identity*
dtype0*
_output_shapes
:*
valueB"        

%lstm_3/while/strided_slice_11/stack_2Const^lstm_3/while/Identity*
_output_shapes
:*
valueB"      *
dtype0
Ú
lstm_3/while/strided_slice_11StridedSlicelstm_3/while/ReadVariableOp_11#lstm_3/while/strided_slice_11/stack%lstm_3/while/strided_slice_11/stack_1%lstm_3/while/strided_slice_11/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  
Ż
lstm_3/while/MatMul_7MatMullstm_3/while/Identity_3lstm_3/while/strided_slice_11*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
z
lstm_3/while/add_7Addlstm_3/while/BiasAdd_3lstm_3/while/MatMul_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/while/mul_4/xConst^lstm_3/while/Identity*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
u
lstm_3/while/mul_4Mullstm_3/while/mul_4/xlstm_3/while/add_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/while/add_8/yConst^lstm_3/while/Identity*
_output_shapes
: *
valueB
 *   ?*
dtype0
u
lstm_3/while/add_8Addlstm_3/while/mul_4lstm_3/while/add_8/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_3/while/Const_4Const^lstm_3/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
q
lstm_3/while/Const_5Const^lstm_3/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$lstm_3/while/clip_by_value_2/MinimumMinimumlstm_3/while/add_8lstm_3/while/Const_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_3/while/clip_by_value_2Maximum$lstm_3/while/clip_by_value_2/Minimumlstm_3/while/Const_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
a
lstm_3/while/Tanh_1Tanhlstm_3/while/add_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
~
lstm_3/while/mul_5Mullstm_3/while/clip_by_value_2lstm_3/while/Tanh_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

0lstm_3/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV36lstm_3/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_3/while/Identity_1lstm_3/while/mul_5lstm_3/while/Identity_2*
T0*%
_class
loc:@lstm_3/while/mul_5*
_output_shapes
: 
ů
6lstm_3/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_3/TensorArray*
T0*%
_class
loc:@lstm_3/while/mul_5*
parallel_iterations *
is_constant(**

frame_namelstm_3/while/while_context*
_output_shapes
:
n
lstm_3/while/add_9/yConst^lstm_3/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
lstm_3/while/add_9Addlstm_3/while/Identity_1lstm_3/while/add_9/y*
_output_shapes
: *
T0
^
lstm_3/while/NextIterationNextIterationlstm_3/while/add*
_output_shapes
: *
T0
b
lstm_3/while/NextIteration_1NextIterationlstm_3/while/add_9*
_output_shapes
: *
T0

lstm_3/while/NextIteration_2NextIteration0lstm_3/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
s
lstm_3/while/NextIteration_3NextIterationlstm_3/while/mul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
s
lstm_3/while/NextIteration_4NextIterationlstm_3/while/add_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
O
lstm_3/while/ExitExitlstm_3/while/Switch*
T0*
_output_shapes
: 
S
lstm_3/while/Exit_1Exitlstm_3/while/Switch_1*
T0*
_output_shapes
: 
S
lstm_3/while/Exit_2Exitlstm_3/while/Switch_2*
T0*
_output_shapes
: 
d
lstm_3/while/Exit_3Exitlstm_3/while/Switch_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
d
lstm_3/while/Exit_4Exitlstm_3/while/Switch_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ś
)lstm_3/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm_3/TensorArraylstm_3/while/Exit_2*%
_class
loc:@lstm_3/TensorArray*
_output_shapes
: 

#lstm_3/TensorArrayStack/range/startConst*
value	B : *%
_class
loc:@lstm_3/TensorArray*
dtype0*
_output_shapes
: 

#lstm_3/TensorArrayStack/range/deltaConst*
value	B :*%
_class
loc:@lstm_3/TensorArray*
dtype0*
_output_shapes
: 
ó
lstm_3/TensorArrayStack/rangeRange#lstm_3/TensorArrayStack/range/start)lstm_3/TensorArrayStack/TensorArraySizeV3#lstm_3/TensorArrayStack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*%
_class
loc:@lstm_3/TensorArray

+lstm_3/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm_3/TensorArraylstm_3/TensorArrayStack/rangelstm_3/while/Exit_2*%
_class
loc:@lstm_3/TensorArray*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *$
element_shape:˙˙˙˙˙˙˙˙˙ 
N
lstm_3/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
U

lstm_3/subSublstm_3/while/Exit_1lstm_3/sub/y*
T0*
_output_shapes
: 

lstm_3/TensorArrayReadV3TensorArrayReadV3lstm_3/TensorArray
lstm_3/sublstm_3/while/Exit_2*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_3/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
¨
lstm_3/transpose_1	Transpose+lstm_3/TensorArrayStack/TensorArrayGatherV3lstm_3/transpose_1/perm*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tperm0*
T0
Ą
.lstm_4/kernel/Initializer/random_uniform/shapeConst*
valueB"       * 
_class
loc:@lstm_4/kernel*
dtype0*
_output_shapes
:

,lstm_4/kernel/Initializer/random_uniform/minConst*
valueB
 *řKFž* 
_class
loc:@lstm_4/kernel*
dtype0*
_output_shapes
: 

,lstm_4/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *řKF>* 
_class
loc:@lstm_4/kernel*
dtype0
é
6lstm_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform.lstm_4/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	 *

seed *
T0* 
_class
loc:@lstm_4/kernel
Ň
,lstm_4/kernel/Initializer/random_uniform/subSub,lstm_4/kernel/Initializer/random_uniform/max,lstm_4/kernel/Initializer/random_uniform/min* 
_class
loc:@lstm_4/kernel*
_output_shapes
: *
T0
ĺ
,lstm_4/kernel/Initializer/random_uniform/mulMul6lstm_4/kernel/Initializer/random_uniform/RandomUniform,lstm_4/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@lstm_4/kernel*
_output_shapes
:	 
×
(lstm_4/kernel/Initializer/random_uniformAdd,lstm_4/kernel/Initializer/random_uniform/mul,lstm_4/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@lstm_4/kernel*
_output_shapes
:	 
Ş
lstm_4/kernelVarHandleOp*
shared_namelstm_4/kernel* 
_class
loc:@lstm_4/kernel*
	container *
shape:	 *
dtype0*
_output_shapes
: 
k
.lstm_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_4/kernel*
_output_shapes
: 

lstm_4/kernel/AssignAssignVariableOplstm_4/kernel(lstm_4/kernel/Initializer/random_uniform* 
_class
loc:@lstm_4/kernel*
dtype0

!lstm_4/kernel/Read/ReadVariableOpReadVariableOplstm_4/kernel* 
_class
loc:@lstm_4/kernel*
dtype0*
_output_shapes
:	 
´
7lstm_4/recurrent_kernel/Initializer/random_normal/shapeConst*
valueB"       **
_class 
loc:@lstm_4/recurrent_kernel*
dtype0*
_output_shapes
:
§
6lstm_4/recurrent_kernel/Initializer/random_normal/meanConst*
valueB
 *    **
_class 
loc:@lstm_4/recurrent_kernel*
dtype0*
_output_shapes
: 
Š
8lstm_4/recurrent_kernel/Initializer/random_normal/stddevConst*
valueB
 *  ?**
_class 
loc:@lstm_4/recurrent_kernel*
dtype0*
_output_shapes
: 

Flstm_4/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7lstm_4/recurrent_kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	 *

seed *
T0**
_class 
loc:@lstm_4/recurrent_kernel*
seed2 

5lstm_4/recurrent_kernel/Initializer/random_normal/mulMulFlstm_4/recurrent_kernel/Initializer/random_normal/RandomStandardNormal8lstm_4/recurrent_kernel/Initializer/random_normal/stddev**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
:	 *
T0
ý
1lstm_4/recurrent_kernel/Initializer/random_normalAdd5lstm_4/recurrent_kernel/Initializer/random_normal/mul6lstm_4/recurrent_kernel/Initializer/random_normal/mean*
_output_shapes
:	 *
T0**
_class 
loc:@lstm_4/recurrent_kernel
Ô
&lstm_4/recurrent_kernel/Initializer/QrQr1lstm_4/recurrent_kernel/Initializer/random_normal*
full_matrices( *
T0**
_class 
loc:@lstm_4/recurrent_kernel*)
_output_shapes
:	 :  
ł
,lstm_4/recurrent_kernel/Initializer/DiagPartDiagPart(lstm_4/recurrent_kernel/Initializer/Qr:1**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
: *
T0
Ż
(lstm_4/recurrent_kernel/Initializer/SignSign,lstm_4/recurrent_kernel/Initializer/DiagPart*
T0**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
: 
Ö
'lstm_4/recurrent_kernel/Initializer/mulMul&lstm_4/recurrent_kernel/Initializer/Qr(lstm_4/recurrent_kernel/Initializer/Sign**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
:	 *
T0
Ŕ
Clstm_4/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       **
_class 
loc:@lstm_4/recurrent_kernel

>lstm_4/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose'lstm_4/recurrent_kernel/Initializer/mulClstm_4/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
:	 *
Tperm0
Ž
1lstm_4/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"       **
_class 
loc:@lstm_4/recurrent_kernel*
dtype0*
_output_shapes
:

+lstm_4/recurrent_kernel/Initializer/ReshapeReshape>lstm_4/recurrent_kernel/Initializer/matrix_transpose/transpose1lstm_4/recurrent_kernel/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
:	 

+lstm_4/recurrent_kernel/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?**
_class 
loc:@lstm_4/recurrent_kernel
ŕ
)lstm_4/recurrent_kernel/Initializer/mul_1Mul+lstm_4/recurrent_kernel/Initializer/mul_1/x+lstm_4/recurrent_kernel/Initializer/Reshape*
T0**
_class 
loc:@lstm_4/recurrent_kernel*
_output_shapes
:	 
Č
lstm_4/recurrent_kernelVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namelstm_4/recurrent_kernel**
_class 
loc:@lstm_4/recurrent_kernel*
	container *
shape:	 

8lstm_4/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_4/recurrent_kernel*
_output_shapes
: 
Ż
lstm_4/recurrent_kernel/AssignAssignVariableOplstm_4/recurrent_kernel)lstm_4/recurrent_kernel/Initializer/mul_1**
_class 
loc:@lstm_4/recurrent_kernel*
dtype0
°
+lstm_4/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm_4/recurrent_kernel**
_class 
loc:@lstm_4/recurrent_kernel*
dtype0*
_output_shapes
:	 

lstm_4/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@lstm_4/bias*
dtype0*
_output_shapes
: 

lstm_4/bias/Initializer/onesConst*
valueB *  ?*
_class
loc:@lstm_4/bias*
dtype0*
_output_shapes
: 

lstm_4/bias/Initializer/zeros_1Const*
valueB@*    *
_class
loc:@lstm_4/bias*
dtype0*
_output_shapes
:@

#lstm_4/bias/Initializer/concat/axisConst*
value	B : *
_class
loc:@lstm_4/bias*
dtype0*
_output_shapes
: 

lstm_4/bias/Initializer/concatConcatV2lstm_4/bias/Initializer/zeroslstm_4/bias/Initializer/oneslstm_4/bias/Initializer/zeros_1#lstm_4/bias/Initializer/concat/axis*
T0*
_class
loc:@lstm_4/bias*
N*
_output_shapes	
:*

Tidx0
 
lstm_4/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namelstm_4/bias*
_class
loc:@lstm_4/bias*
	container *
shape:
g
,lstm_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOplstm_4/bias*
_output_shapes
: 

lstm_4/bias/AssignAssignVariableOplstm_4/biaslstm_4/bias/Initializer/concat*
_class
loc:@lstm_4/bias*
dtype0

lstm_4/bias/Read/ReadVariableOpReadVariableOplstm_4/bias*
_class
loc:@lstm_4/bias*
dtype0*
_output_shapes	
:
^
lstm_4/ShapeShapelstm_3/transpose_1*
T0*
out_type0*
_output_shapes
:
d
lstm_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lstm_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lstm_4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

lstm_4/strided_sliceStridedSlicelstm_4/Shapelstm_4/strided_slice/stacklstm_4/strided_slice/stack_1lstm_4/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
T
lstm_4/zeros/mul/yConst*
value	B : *
dtype0*
_output_shapes
: 
b
lstm_4/zeros/mulMullstm_4/strided_slicelstm_4/zeros/mul/y*
T0*
_output_shapes
: 
V
lstm_4/zeros/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
a
lstm_4/zeros/LessLesslstm_4/zeros/mullstm_4/zeros/Less/y*
T0*
_output_shapes
: 
W
lstm_4/zeros/packed/1Const*
value	B : *
dtype0*
_output_shapes
: 

lstm_4/zeros/packedPacklstm_4/strided_slicelstm_4/zeros/packed/1*
T0*

axis *
N*
_output_shapes
:
W
lstm_4/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lstm_4/zerosFilllstm_4/zeros/packedlstm_4/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
V
lstm_4/zeros_1/mul/yConst*
value	B : *
dtype0*
_output_shapes
: 
f
lstm_4/zeros_1/mulMullstm_4/strided_slicelstm_4/zeros_1/mul/y*
T0*
_output_shapes
: 
X
lstm_4/zeros_1/Less/yConst*
value
B :č*
dtype0*
_output_shapes
: 
g
lstm_4/zeros_1/LessLesslstm_4/zeros_1/mullstm_4/zeros_1/Less/y*
T0*
_output_shapes
: 
Y
lstm_4/zeros_1/packed/1Const*
value	B : *
dtype0*
_output_shapes
: 

lstm_4/zeros_1/packedPacklstm_4/strided_slicelstm_4/zeros_1/packed/1*
_output_shapes
:*
T0*

axis *
N
Y
lstm_4/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

lstm_4/zeros_1Filllstm_4/zeros_1/packedlstm_4/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
lstm_4/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

lstm_4/transpose	Transposelstm_3/transpose_1lstm_4/transpose/perm*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tperm0
^
lstm_4/Shape_1Shapelstm_4/transpose*
out_type0*
_output_shapes
:*
T0
f
lstm_4/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
h
lstm_4/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ś
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1lstm_4/strided_slice_1/stacklstm_4/strided_slice_1/stack_1lstm_4/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
f
lstm_4/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
h
lstm_4/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
š
lstm_4/strided_slice_2StridedSlicelstm_4/transposelstm_4/strided_slice_2/stacklstm_4/strided_slice_2/stack_1lstm_4/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
d
lstm_4/ReadVariableOpReadVariableOplstm_4/kernel*
dtype0*
_output_shapes
:	 
m
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
valueB"        *
dtype0
o
lstm_4/strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ľ
lstm_4/strided_slice_3StridedSlicelstm_4/ReadVariableOplstm_4/strided_slice_3/stacklstm_4/strided_slice_3/stack_1lstm_4/strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0

lstm_4/MatMulMatMullstm_4/strided_slice_2lstm_4/strided_slice_3*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
f
lstm_4/ReadVariableOp_1ReadVariableOplstm_4/kernel*
dtype0*
_output_shapes
:	 
m
lstm_4/strided_slice_4/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_4/stack_1Const*
valueB"    @   *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_4/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ˇ
lstm_4/strided_slice_4StridedSlicelstm_4/ReadVariableOp_1lstm_4/strided_slice_4/stacklstm_4/strided_slice_4/stack_1lstm_4/strided_slice_4/stack_2*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
Ą
lstm_4/MatMul_1MatMullstm_4/strided_slice_2lstm_4/strided_slice_4*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
f
lstm_4/ReadVariableOp_2ReadVariableOplstm_4/kernel*
dtype0*
_output_shapes
:	 
m
lstm_4/strided_slice_5/stackConst*
valueB"    @   *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_5/stack_1Const*
dtype0*
_output_shapes
:*
valueB"    `   
o
lstm_4/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ˇ
lstm_4/strided_slice_5StridedSlicelstm_4/ReadVariableOp_2lstm_4/strided_slice_5/stacklstm_4/strided_slice_5/stack_1lstm_4/strided_slice_5/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0
Ą
lstm_4/MatMul_2MatMullstm_4/strided_slice_2lstm_4/strided_slice_5*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
f
lstm_4/ReadVariableOp_3ReadVariableOplstm_4/kernel*
dtype0*
_output_shapes
:	 
m
lstm_4/strided_slice_6/stackConst*
valueB"    `   *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
lstm_4/strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ˇ
lstm_4/strided_slice_6StridedSlicelstm_4/ReadVariableOp_3lstm_4/strided_slice_6/stacklstm_4/strided_slice_6/stack_1lstm_4/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  
Ą
lstm_4/MatMul_3MatMullstm_4/strided_slice_2lstm_4/strided_slice_6*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
`
lstm_4/ReadVariableOp_4ReadVariableOplstm_4/bias*
dtype0*
_output_shapes	
:
f
lstm_4/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_7/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
h
lstm_4/strided_slice_7/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ł
lstm_4/strided_slice_7StridedSlicelstm_4/ReadVariableOp_4lstm_4/strided_slice_7/stacklstm_4/strided_slice_7/stack_1lstm_4/strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

lstm_4/BiasAddBiasAddlstm_4/MatMullstm_4/strided_slice_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC
`
lstm_4/ReadVariableOp_5ReadVariableOplstm_4/bias*
dtype0*
_output_shapes	
:
f
lstm_4/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_8/stack_1Const*
valueB:@*
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ł
lstm_4/strided_slice_8StridedSlicelstm_4/ReadVariableOp_5lstm_4/strided_slice_8/stacklstm_4/strided_slice_8/stack_1lstm_4/strided_slice_8/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 

lstm_4/BiasAdd_1BiasAddlstm_4/MatMul_1lstm_4/strided_slice_8*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
`
lstm_4/ReadVariableOp_6ReadVariableOplstm_4/bias*
dtype0*
_output_shapes	
:
f
lstm_4/strided_slice_9/stackConst*
valueB:@*
dtype0*
_output_shapes
:
h
lstm_4/strided_slice_9/stack_1Const*
dtype0*
_output_shapes
:*
valueB:`
h
lstm_4/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ł
lstm_4/strided_slice_9StridedSlicelstm_4/ReadVariableOp_6lstm_4/strided_slice_9/stacklstm_4/strided_slice_9/stack_1lstm_4/strided_slice_9/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 

lstm_4/BiasAdd_2BiasAddlstm_4/MatMul_2lstm_4/strided_slice_9*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
`
lstm_4/ReadVariableOp_7ReadVariableOplstm_4/bias*
dtype0*
_output_shapes	
:
g
lstm_4/strided_slice_10/stackConst*
_output_shapes
:*
valueB:`*
dtype0
i
lstm_4/strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
lstm_4/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ˇ
lstm_4/strided_slice_10StridedSlicelstm_4/ReadVariableOp_7lstm_4/strided_slice_10/stacklstm_4/strided_slice_10/stack_1lstm_4/strided_slice_10/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 

lstm_4/BiasAdd_3BiasAddlstm_4/MatMul_3lstm_4/strided_slice_10*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
p
lstm_4/ReadVariableOp_8ReadVariableOplstm_4/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_4/strided_slice_11/stackConst*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_11/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_11/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ť
lstm_4/strided_slice_11StridedSlicelstm_4/ReadVariableOp_8lstm_4/strided_slice_11/stacklstm_4/strided_slice_11/stack_1lstm_4/strided_slice_11/stack_2*
_output_shapes

:  *
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask

lstm_4/MatMul_4MatMullstm_4/zeroslstm_4/strided_slice_11*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
d

lstm_4/addAddlstm_4/BiasAddlstm_4/MatMul_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Q
lstm_4/mul/xConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
]

lstm_4/mulMullstm_4/mul/x
lstm_4/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_4/add_1/yConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
a
lstm_4/add_1Add
lstm_4/mullstm_4/add_1/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Q
lstm_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
S
lstm_4/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
w
lstm_4/clip_by_value/MinimumMinimumlstm_4/add_1lstm_4/Const_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
}
lstm_4/clip_by_valueMaximumlstm_4/clip_by_value/Minimumlstm_4/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
p
lstm_4/ReadVariableOp_9ReadVariableOplstm_4/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_4/strided_slice_12/stackConst*
_output_shapes
:*
valueB"        *
dtype0
p
lstm_4/strided_slice_12/stack_1Const*
valueB"    @   *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_12/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ť
lstm_4/strided_slice_12StridedSlicelstm_4/ReadVariableOp_9lstm_4/strided_slice_12/stacklstm_4/strided_slice_12/stack_1lstm_4/strided_slice_12/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask 

lstm_4/MatMul_5MatMullstm_4/zeroslstm_4/strided_slice_12*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
h
lstm_4/add_2Addlstm_4/BiasAdd_1lstm_4/MatMul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_4/mul_1/xConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
c
lstm_4/mul_1Mullstm_4/mul_1/xlstm_4/add_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_4/add_3/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
c
lstm_4/add_3Addlstm_4/mul_1lstm_4/add_3/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_4/Const_2Const*
_output_shapes
: *
valueB
 *    *
dtype0
S
lstm_4/Const_3Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
lstm_4/clip_by_value_1/MinimumMinimumlstm_4/add_3lstm_4/Const_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_4/clip_by_value_1Maximumlstm_4/clip_by_value_1/Minimumlstm_4/Const_2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
m
lstm_4/mul_2Mullstm_4/clip_by_value_1lstm_4/zeros_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/ReadVariableOp_10ReadVariableOplstm_4/recurrent_kernel*
dtype0*
_output_shapes
:	 
n
lstm_4/strided_slice_13/stackConst*
_output_shapes
:*
valueB"    @   *
dtype0
p
lstm_4/strided_slice_13/stack_1Const*
valueB"    `   *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_13/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ź
lstm_4/strided_slice_13StridedSlicelstm_4/ReadVariableOp_10lstm_4/strided_slice_13/stacklstm_4/strided_slice_13/stack_1lstm_4/strided_slice_13/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask 

lstm_4/MatMul_6MatMullstm_4/zeroslstm_4/strided_slice_13*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
h
lstm_4/add_4Addlstm_4/BiasAdd_2lstm_4/MatMul_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
lstm_4/TanhTanhlstm_4/add_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
h
lstm_4/mul_3Mullstm_4/clip_by_valuelstm_4/Tanh*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
a
lstm_4/add_5Addlstm_4/mul_2lstm_4/mul_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/ReadVariableOp_11ReadVariableOplstm_4/recurrent_kernel*
_output_shapes
:	 *
dtype0
n
lstm_4/strided_slice_14/stackConst*
valueB"    `   *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_14/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
p
lstm_4/strided_slice_14/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ź
lstm_4/strided_slice_14StridedSlicelstm_4/ReadVariableOp_11lstm_4/strided_slice_14/stacklstm_4/strided_slice_14/stack_1lstm_4/strided_slice_14/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:  

lstm_4/MatMul_7MatMullstm_4/zeroslstm_4/strided_slice_14*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 
h
lstm_4/add_6Addlstm_4/BiasAdd_3lstm_4/MatMul_7*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_4/mul_4/xConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
c
lstm_4/mul_4Mullstm_4/mul_4/xlstm_4/add_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_4/add_7/yConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
c
lstm_4/add_7Addlstm_4/mul_4lstm_4/add_7/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
lstm_4/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
S
lstm_4/Const_5Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
lstm_4/clip_by_value_2/MinimumMinimumlstm_4/add_7lstm_4/Const_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_4/clip_by_value_2Maximumlstm_4/clip_by_value_2/Minimumlstm_4/Const_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
U
lstm_4/Tanh_1Tanhlstm_4/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_4/mul_5Mullstm_4/clip_by_value_2lstm_4/Tanh_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ë
lstm_4/TensorArrayTensorArrayV3lstm_4/strided_slice_1*
clear_after_read(*
dynamic_size( *
identical_element_shapes(* 
tensor_array_name	output_ta*
dtype0*
_output_shapes

:: *
element_shape:
ě
lstm_4/TensorArray_1TensorArrayV3lstm_4/strided_slice_1*
identical_element_shapes(*
tensor_array_name
input_ta*
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( 
o
lstm_4/TensorArrayUnstack/ShapeShapelstm_4/transpose*
T0*
out_type0*
_output_shapes
:
w
-lstm_4/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/lstm_4/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/lstm_4/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ű
'lstm_4/TensorArrayUnstack/strided_sliceStridedSlicelstm_4/TensorArrayUnstack/Shape-lstm_4/TensorArrayUnstack/strided_slice/stack/lstm_4/TensorArrayUnstack/strided_slice/stack_1/lstm_4/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
g
%lstm_4/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%lstm_4/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Đ
lstm_4/TensorArrayUnstack/rangeRange%lstm_4/TensorArrayUnstack/range/start'lstm_4/TensorArrayUnstack/strided_slice%lstm_4/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

Alstm_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lstm_4/TensorArray_1lstm_4/TensorArrayUnstack/rangelstm_4/transposelstm_4/TensorArray_1:1*
T0*#
_class
loc:@lstm_4/transpose*
_output_shapes
: 
M
lstm_4/timeConst*
value	B : *
dtype0*
_output_shapes
: 
a
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
value	B :*
dtype0
`
lstm_4/while/iteration_counterConst*
_output_shapes
: *
value	B : *
dtype0
ś
lstm_4/while/EnterEnterlstm_4/while/iteration_counter*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 
Ľ
lstm_4/while/Enter_1Enterlstm_4/time*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 
Ž
lstm_4/while/Enter_2Enterlstm_4/TensorArray:1*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 
ˇ
lstm_4/while/Enter_3Enterlstm_4/zeros**

frame_namelstm_4/while/while_context*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
is_constant( *
parallel_iterations 
š
lstm_4/while/Enter_4Enterlstm_4/zeros_1*
T0*
is_constant( *
parallel_iterations **

frame_namelstm_4/while/while_context*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
w
lstm_4/while/MergeMergelstm_4/while/Enterlstm_4/while/NextIteration*
T0*
N*
_output_shapes
: : 
}
lstm_4/while/Merge_1Mergelstm_4/while/Enter_1lstm_4/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
}
lstm_4/while/Merge_2Mergelstm_4/while/Enter_2lstm_4/while/NextIteration_2*
_output_shapes
: : *
T0*
N

lstm_4/while/Merge_3Mergelstm_4/while/Enter_3lstm_4/while/NextIteration_3*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : *
T0

lstm_4/while/Merge_4Mergelstm_4/while/Enter_4lstm_4/while/NextIteration_4*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ : *
T0
g
lstm_4/while/LessLesslstm_4/while/Mergelstm_4/while/Less/Enter*
T0*
_output_shapes
: 
ź
lstm_4/while/Less/EnterEnterlstm_4/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 
m
lstm_4/while/Less_1Lesslstm_4/while/Merge_1lstm_4/while/Less_1/Enter*
T0*
_output_shapes
: 
ľ
lstm_4/while/Less_1/EnterEnterlstm_4/strided_slice_1*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 
e
lstm_4/while/LogicalAnd
LogicalAndlstm_4/while/Lesslstm_4/while/Less_1*
_output_shapes
: 
R
lstm_4/while/LoopCondLoopCondlstm_4/while/LogicalAnd*
_output_shapes
: 

lstm_4/while/SwitchSwitchlstm_4/while/Mergelstm_4/while/LoopCond*
T0*%
_class
loc:@lstm_4/while/Merge*
_output_shapes
: : 

lstm_4/while/Switch_1Switchlstm_4/while/Merge_1lstm_4/while/LoopCond*
T0*'
_class
loc:@lstm_4/while/Merge_1*
_output_shapes
: : 

lstm_4/while/Switch_2Switchlstm_4/while/Merge_2lstm_4/while/LoopCond*
_output_shapes
: : *
T0*'
_class
loc:@lstm_4/while/Merge_2
ş
lstm_4/while/Switch_3Switchlstm_4/while/Merge_3lstm_4/while/LoopCond*
T0*'
_class
loc:@lstm_4/while/Merge_3*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
ş
lstm_4/while/Switch_4Switchlstm_4/while/Merge_4lstm_4/while/LoopCond*
T0*'
_class
loc:@lstm_4/while/Merge_4*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙ :˙˙˙˙˙˙˙˙˙ 
Y
lstm_4/while/IdentityIdentitylstm_4/while/Switch:1*
_output_shapes
: *
T0
]
lstm_4/while/Identity_1Identitylstm_4/while/Switch_1:1*
T0*
_output_shapes
: 
]
lstm_4/while/Identity_2Identitylstm_4/while/Switch_2:1*
T0*
_output_shapes
: 
n
lstm_4/while/Identity_3Identitylstm_4/while/Switch_3:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
n
lstm_4/while/Identity_4Identitylstm_4/while/Switch_4:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_4/while/add/yConst^lstm_4/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lstm_4/while/addAddlstm_4/while/Identitylstm_4/while/add/y*
_output_shapes
: *
T0
Đ
lstm_4/while/TensorArrayReadV3TensorArrayReadV3$lstm_4/while/TensorArrayReadV3/Enterlstm_4/while/Identity_1&lstm_4/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Â
$lstm_4/while/TensorArrayReadV3/EnterEnterlstm_4/TensorArray_1**

frame_namelstm_4/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
í
&lstm_4/while/TensorArrayReadV3/Enter_1EnterAlstm_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3**

frame_namelstm_4/while/while_context*
_output_shapes
: *
T0*
is_constant(*
parallel_iterations 

lstm_4/while/ReadVariableOpReadVariableOp!lstm_4/while/ReadVariableOp/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 
´
!lstm_4/while/ReadVariableOp/EnterEnterlstm_4/kernel*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 

 lstm_4/while/strided_slice/stackConst^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

"lstm_4/while/strided_slice/stack_1Const^lstm_4/while/Identity*
dtype0*
_output_shapes
:*
valueB"        

"lstm_4/while/strided_slice/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ë
lstm_4/while/strided_sliceStridedSlicelstm_4/while/ReadVariableOp lstm_4/while/strided_slice/stack"lstm_4/while/strided_slice/stack_1"lstm_4/while/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0
ą
lstm_4/while/MatMulMatMullstm_4/while/TensorArrayReadV3lstm_4/while/strided_slice*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_1ReadVariableOp!lstm_4/while/ReadVariableOp/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 

"lstm_4/while/strided_slice_1/stackConst^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_1/stack_1Const^lstm_4/while/Identity*
valueB"    @   *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_1/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_4/while/strided_slice_1StridedSlicelstm_4/while/ReadVariableOp_1"lstm_4/while/strided_slice_1/stack$lstm_4/while/strided_slice_1/stack_1$lstm_4/while/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0
ľ
lstm_4/while/MatMul_1MatMullstm_4/while/TensorArrayReadV3lstm_4/while/strided_slice_1*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0

lstm_4/while/ReadVariableOp_2ReadVariableOp!lstm_4/while/ReadVariableOp/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 

"lstm_4/while/strided_slice_2/stackConst^lstm_4/while/Identity*
_output_shapes
:*
valueB"    @   *
dtype0

$lstm_4/while/strided_slice_2/stack_1Const^lstm_4/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_2/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_4/while/strided_slice_2StridedSlicelstm_4/while/ReadVariableOp_2"lstm_4/while/strided_slice_2/stack$lstm_4/while/strided_slice_2/stack_1$lstm_4/while/strided_slice_2/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask 
ľ
lstm_4/while/MatMul_2MatMullstm_4/while/TensorArrayReadV3lstm_4/while/strided_slice_2*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( 

lstm_4/while/ReadVariableOp_3ReadVariableOp!lstm_4/while/ReadVariableOp/Enter^lstm_4/while/Identity*
_output_shapes
:	 *
dtype0

"lstm_4/while/strided_slice_3/stackConst^lstm_4/while/Identity*
_output_shapes
:*
valueB"    `   *
dtype0

$lstm_4/while/strided_slice_3/stack_1Const^lstm_4/while/Identity*
_output_shapes
:*
valueB"        *
dtype0

$lstm_4/while/strided_slice_3/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_4/while/strided_slice_3StridedSlicelstm_4/while/ReadVariableOp_3"lstm_4/while/strided_slice_3/stack$lstm_4/while/strided_slice_3/stack_1$lstm_4/while/strided_slice_3/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:  *
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask 
ľ
lstm_4/while/MatMul_3MatMullstm_4/while/TensorArrayReadV3lstm_4/while/strided_slice_3*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_4ReadVariableOp#lstm_4/while/ReadVariableOp_4/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes	
:
´
#lstm_4/while/ReadVariableOp_4/EnterEnterlstm_4/bias*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 

"lstm_4/while/strided_slice_4/stackConst^lstm_4/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_4/stack_1Const^lstm_4/while/Identity*
_output_shapes
:*
valueB: *
dtype0

$lstm_4/while/strided_slice_4/stack_2Const^lstm_4/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_4/while/strided_slice_4StridedSlicelstm_4/while/ReadVariableOp_4"lstm_4/while/strided_slice_4/stack$lstm_4/while/strided_slice_4/stack_1$lstm_4/while/strided_slice_4/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 

lstm_4/while/BiasAddBiasAddlstm_4/while/MatMullstm_4/while/strided_slice_4*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_5ReadVariableOp#lstm_4/while/ReadVariableOp_4/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes	
:

"lstm_4/while/strided_slice_5/stackConst^lstm_4/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_5/stack_1Const^lstm_4/while/Identity*
dtype0*
_output_shapes
:*
valueB:@

$lstm_4/while/strided_slice_5/stack_2Const^lstm_4/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_4/while/strided_slice_5StridedSlicelstm_4/while/ReadVariableOp_5"lstm_4/while/strided_slice_5/stack$lstm_4/while/strided_slice_5/stack_1$lstm_4/while/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

lstm_4/while/BiasAdd_1BiasAddlstm_4/while/MatMul_1lstm_4/while/strided_slice_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC

lstm_4/while/ReadVariableOp_6ReadVariableOp#lstm_4/while/ReadVariableOp_4/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes	
:

"lstm_4/while/strided_slice_6/stackConst^lstm_4/while/Identity*
valueB:@*
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_6/stack_1Const^lstm_4/while/Identity*
valueB:`*
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_6/stack_2Const^lstm_4/while/Identity*
dtype0*
_output_shapes
:*
valueB:
Ń
lstm_4/while/strided_slice_6StridedSlicelstm_4/while/ReadVariableOp_6"lstm_4/while/strided_slice_6/stack$lstm_4/while/strided_slice_6/stack_1$lstm_4/while/strided_slice_6/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 

lstm_4/while/BiasAdd_2BiasAddlstm_4/while/MatMul_2lstm_4/while/strided_slice_6*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_7ReadVariableOp#lstm_4/while/ReadVariableOp_4/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes	
:

"lstm_4/while/strided_slice_7/stackConst^lstm_4/while/Identity*
valueB:`*
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_7/stack_1Const^lstm_4/while/Identity*
valueB: *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_7/stack_2Const^lstm_4/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ń
lstm_4/while/strided_slice_7StridedSlicelstm_4/while/ReadVariableOp_7"lstm_4/while/strided_slice_7/stack$lstm_4/while/strided_slice_7/stack_1$lstm_4/while/strided_slice_7/stack_2*
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 

lstm_4/while/BiasAdd_3BiasAddlstm_4/while/MatMul_3lstm_4/while/strided_slice_7*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_4/while/ReadVariableOp_8ReadVariableOp#lstm_4/while/ReadVariableOp_8/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 
Ŕ
#lstm_4/while/ReadVariableOp_8/EnterEnterlstm_4/recurrent_kernel*
T0*
is_constant(*
parallel_iterations **

frame_namelstm_4/while/while_context*
_output_shapes
: 

"lstm_4/while/strided_slice_8/stackConst^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_8/stack_1Const^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_8/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ő
lstm_4/while/strided_slice_8StridedSlicelstm_4/while/ReadVariableOp_8"lstm_4/while/strided_slice_8/stack$lstm_4/while/strided_slice_8/stack_1$lstm_4/while/strided_slice_8/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0
Ž
lstm_4/while/MatMul_4MatMullstm_4/while/Identity_3lstm_4/while/strided_slice_8*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
x
lstm_4/while/add_1Addlstm_4/while/BiasAddlstm_4/while/MatMul_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
o
lstm_4/while/mul/xConst^lstm_4/while/Identity*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
q
lstm_4/while/mulMullstm_4/while/mul/xlstm_4/while/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/add_2/yConst^lstm_4/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
s
lstm_4/while/add_2Addlstm_4/while/mullstm_4/while/add_2/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
o
lstm_4/while/ConstConst^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
q
lstm_4/while/Const_1Const^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0

"lstm_4/while/clip_by_value/MinimumMinimumlstm_4/while/add_2lstm_4/while/Const_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/clip_by_valueMaximum"lstm_4/while/clip_by_value/Minimumlstm_4/while/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_9ReadVariableOp#lstm_4/while/ReadVariableOp_8/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 

"lstm_4/while/strided_slice_9/stackConst^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_9/stack_1Const^lstm_4/while/Identity*
valueB"    @   *
dtype0*
_output_shapes
:

$lstm_4/while/strided_slice_9/stack_2Const^lstm_4/while/Identity*
dtype0*
_output_shapes
:*
valueB"      
Ő
lstm_4/while/strided_slice_9StridedSlicelstm_4/while/ReadVariableOp_9"lstm_4/while/strided_slice_9/stack$lstm_4/while/strided_slice_9/stack_1$lstm_4/while/strided_slice_9/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask
Ž
lstm_4/while/MatMul_5MatMullstm_4/while/Identity_3lstm_4/while/strided_slice_9*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
z
lstm_4/while/add_3Addlstm_4/while/BiasAdd_1lstm_4/while/MatMul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/mul_1/xConst^lstm_4/while/Identity*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
u
lstm_4/while/mul_1Mullstm_4/while/mul_1/xlstm_4/while/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/add_4/yConst^lstm_4/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
lstm_4/while/add_4Addlstm_4/while/mul_1lstm_4/while/add_4/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/Const_2Const^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
q
lstm_4/while/Const_3Const^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0

$lstm_4/while/clip_by_value_1/MinimumMinimumlstm_4/while/add_4lstm_4/while/Const_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/clip_by_value_1Maximum$lstm_4/while/clip_by_value_1/Minimumlstm_4/while/Const_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/mul_2Mullstm_4/while/clip_by_value_1lstm_4/while/Identity_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0

lstm_4/while/ReadVariableOp_10ReadVariableOp#lstm_4/while/ReadVariableOp_8/Enter^lstm_4/while/Identity*
_output_shapes
:	 *
dtype0

#lstm_4/while/strided_slice_10/stackConst^lstm_4/while/Identity*
_output_shapes
:*
valueB"    @   *
dtype0

%lstm_4/while/strided_slice_10/stack_1Const^lstm_4/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

%lstm_4/while/strided_slice_10/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ú
lstm_4/while/strided_slice_10StridedSlicelstm_4/while/ReadVariableOp_10#lstm_4/while/strided_slice_10/stack%lstm_4/while/strided_slice_10/stack_1%lstm_4/while/strided_slice_10/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0
Ż
lstm_4/while/MatMul_6MatMullstm_4/while/Identity_3lstm_4/while/strided_slice_10*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
z
lstm_4/while/add_5Addlstm_4/while/BiasAdd_2lstm_4/while/MatMul_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
_
lstm_4/while/TanhTanhlstm_4/while/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
z
lstm_4/while/mul_3Mullstm_4/while/clip_by_valuelstm_4/while/Tanh*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
s
lstm_4/while/add_6Addlstm_4/while/mul_2lstm_4/while/mul_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/ReadVariableOp_11ReadVariableOp#lstm_4/while/ReadVariableOp_8/Enter^lstm_4/while/Identity*
dtype0*
_output_shapes
:	 

#lstm_4/while/strided_slice_11/stackConst^lstm_4/while/Identity*
valueB"    `   *
dtype0*
_output_shapes
:

%lstm_4/while/strided_slice_11/stack_1Const^lstm_4/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

%lstm_4/while/strided_slice_11/stack_2Const^lstm_4/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
Ú
lstm_4/while/strided_slice_11StridedSlicelstm_4/while/ReadVariableOp_11#lstm_4/while/strided_slice_11/stack%lstm_4/while/strided_slice_11/stack_1%lstm_4/while/strided_slice_11/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:  *
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask
Ż
lstm_4/while/MatMul_7MatMullstm_4/while/Identity_3lstm_4/while/strided_slice_11*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_b( *
T0
z
lstm_4/while/add_7Addlstm_4/while/BiasAdd_3lstm_4/while/MatMul_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/mul_4/xConst^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *ÍĚL>*
dtype0
u
lstm_4/while/mul_4Mullstm_4/while/mul_4/xlstm_4/while/add_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
lstm_4/while/add_8/yConst^lstm_4/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
lstm_4/while/add_8Addlstm_4/while/mul_4lstm_4/while/add_8/y*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
q
lstm_4/while/Const_4Const^lstm_4/while/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
q
lstm_4/while/Const_5Const^lstm_4/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?

$lstm_4/while/clip_by_value_2/MinimumMinimumlstm_4/while/add_8lstm_4/while/Const_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

lstm_4/while/clip_by_value_2Maximum$lstm_4/while/clip_by_value_2/Minimumlstm_4/while/Const_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
a
lstm_4/while/Tanh_1Tanhlstm_4/while/add_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
~
lstm_4/while/mul_5Mullstm_4/while/clip_by_value_2lstm_4/while/Tanh_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

0lstm_4/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV36lstm_4/while/TensorArrayWrite/TensorArrayWriteV3/Enterlstm_4/while/Identity_1lstm_4/while/mul_5lstm_4/while/Identity_2*
_output_shapes
: *
T0*%
_class
loc:@lstm_4/while/mul_5
ů
6lstm_4/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlstm_4/TensorArray*
is_constant(*
_output_shapes
:**

frame_namelstm_4/while/while_context*
T0*%
_class
loc:@lstm_4/while/mul_5*
parallel_iterations 
n
lstm_4/while/add_9/yConst^lstm_4/while/Identity*
_output_shapes
: *
value	B :*
dtype0
i
lstm_4/while/add_9Addlstm_4/while/Identity_1lstm_4/while/add_9/y*
_output_shapes
: *
T0
^
lstm_4/while/NextIterationNextIterationlstm_4/while/add*
T0*
_output_shapes
: 
b
lstm_4/while/NextIteration_1NextIterationlstm_4/while/add_9*
T0*
_output_shapes
: 

lstm_4/while/NextIteration_2NextIteration0lstm_4/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
s
lstm_4/while/NextIteration_3NextIterationlstm_4/while/mul_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
s
lstm_4/while/NextIteration_4NextIterationlstm_4/while/add_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
O
lstm_4/while/ExitExitlstm_4/while/Switch*
T0*
_output_shapes
: 
S
lstm_4/while/Exit_1Exitlstm_4/while/Switch_1*
_output_shapes
: *
T0
S
lstm_4/while/Exit_2Exitlstm_4/while/Switch_2*
T0*
_output_shapes
: 
d
lstm_4/while/Exit_3Exitlstm_4/while/Switch_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
d
lstm_4/while/Exit_4Exitlstm_4/while/Switch_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ś
)lstm_4/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lstm_4/TensorArraylstm_4/while/Exit_2*%
_class
loc:@lstm_4/TensorArray*
_output_shapes
: 

#lstm_4/TensorArrayStack/range/startConst*
value	B : *%
_class
loc:@lstm_4/TensorArray*
dtype0*
_output_shapes
: 

#lstm_4/TensorArrayStack/range/deltaConst*
_output_shapes
: *
value	B :*%
_class
loc:@lstm_4/TensorArray*
dtype0
ó
lstm_4/TensorArrayStack/rangeRange#lstm_4/TensorArrayStack/range/start)lstm_4/TensorArrayStack/TensorArraySizeV3#lstm_4/TensorArrayStack/range/delta*

Tidx0*%
_class
loc:@lstm_4/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

+lstm_4/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lstm_4/TensorArraylstm_4/TensorArrayStack/rangelstm_4/while/Exit_2*$
element_shape:˙˙˙˙˙˙˙˙˙ *%
_class
loc:@lstm_4/TensorArray*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
N
lstm_4/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
U

lstm_4/subSublstm_4/while/Exit_1lstm_4/sub/y*
_output_shapes
: *
T0

lstm_4/TensorArrayReadV3TensorArrayReadV3lstm_4/TensorArray
lstm_4/sublstm_4/while/Exit_2*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
lstm_4/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
¨
lstm_4/transpose_1	Transpose+lstm_4/TensorArrayStack/TensorArrayGatherV3lstm_4/transpose_1/perm*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tperm0
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"       *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *ťrËž*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ťrË>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ë
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

: *

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
č
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
_output_shapes

: *
T0
Ú
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

: 
Ź
dense_2/kernelVarHandleOp*
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape
: *
dtype0*
_output_shapes
: 
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

: *!
_class
loc:@dense_2/kernel

dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
˘
dense_2/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_2/bias

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

: 
Š
dense_2/MatMulMatMullstm_4/TensorArrayReadV3dense_2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
PlaceholderPlaceholder*
dtype0*
_output_shapes
:	*
shape:	
M
AssignVariableOpAssignVariableOplstm_3/kernelPlaceholder*
dtype0
p
ReadVariableOpReadVariableOplstm_3/kernel^AssignVariableOp*
dtype0*
_output_shapes
:	
`
Placeholder_1Placeholder*
dtype0*
_output_shapes
:	 *
shape:	 
[
AssignVariableOp_1AssignVariableOplstm_3/recurrent_kernelPlaceholder_1*
dtype0
~
ReadVariableOp_1ReadVariableOplstm_3/recurrent_kernel^AssignVariableOp_1*
dtype0*
_output_shapes
:	 
X
Placeholder_2Placeholder*
dtype0*
_output_shapes	
:*
shape:
O
AssignVariableOp_2AssignVariableOplstm_3/biasPlaceholder_2*
dtype0
n
ReadVariableOp_2ReadVariableOplstm_3/bias^AssignVariableOp_2*
dtype0*
_output_shapes	
:
`
Placeholder_3Placeholder*
shape:	 *
dtype0*
_output_shapes
:	 
Q
AssignVariableOp_3AssignVariableOplstm_4/kernelPlaceholder_3*
dtype0
t
ReadVariableOp_3ReadVariableOplstm_4/kernel^AssignVariableOp_3*
dtype0*
_output_shapes
:	 
`
Placeholder_4Placeholder*
_output_shapes
:	 *
shape:	 *
dtype0
[
AssignVariableOp_4AssignVariableOplstm_4/recurrent_kernelPlaceholder_4*
dtype0
~
ReadVariableOp_4ReadVariableOplstm_4/recurrent_kernel^AssignVariableOp_4*
dtype0*
_output_shapes
:	 
X
Placeholder_5Placeholder*
dtype0*
_output_shapes	
:*
shape:
O
AssignVariableOp_5AssignVariableOplstm_4/biasPlaceholder_5*
dtype0
n
ReadVariableOp_5ReadVariableOplstm_4/bias^AssignVariableOp_5*
dtype0*
_output_shapes	
:
^
Placeholder_6Placeholder*
dtype0*
_output_shapes

: *
shape
: 
R
AssignVariableOp_6AssignVariableOpdense_2/kernelPlaceholder_6*
dtype0
t
ReadVariableOp_6ReadVariableOpdense_2/kernel^AssignVariableOp_6*
dtype0*
_output_shapes

: 
V
Placeholder_7Placeholder*
shape:*
dtype0*
_output_shapes
:
P
AssignVariableOp_7AssignVariableOpdense_2/biasPlaceholder_7*
dtype0
n
ReadVariableOp_7ReadVariableOpdense_2/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:
M
VarIsInitializedOpVarIsInitializedOplstm_4/bias*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
[
VarIsInitializedOp_2VarIsInitializedOplstm_4/recurrent_kernel*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOplstm_4/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOplstm_3/kernel*
_output_shapes
: 
[
VarIsInitializedOp_5VarIsInitializedOplstm_3/recurrent_kernel*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOplstm_3/bias*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOpdense_2/bias*
_output_shapes
: 
Ô
initNoOp^dense_2/bias/Assign^dense_2/kernel/Assign^lstm_3/bias/Assign^lstm_3/kernel/Assign^lstm_3/recurrent_kernel/Assign^lstm_4/bias/Assign^lstm_4/kernel/Assign^lstm_4/recurrent_kernel/Assign

)Adam/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	
§
Adam/iterationsVarHandleOp*
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o:*
_class
loc:@Adam/lr*
dtype0

Adam/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam/decay*
dtype0


Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

dense_2_targetPlaceholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
_output_shapes
:*
valueB*  ?*
dtype0

dense_2_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
o
loss/dense_2_loss/subSubdense_2/BiasAdddense_2_target*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
loss/dense_2_loss/SquareSquareloss/dense_2_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
­
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Square(loss/dense_2_loss/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Floss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_2_sample_weights*
T0*
out_type0*
_output_shapes
:

Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_2_loss/Mean*
T0*
out_type0*
_output_shapes
:

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ů
Bloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ď
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

Í
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ŕ
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

é
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

uloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 

wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ő
hloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ş
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Ź
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::*
T0
Á
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
˛
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
É
|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
­
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
ź
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
Ő
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
°
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:*
set_operationa-b*
T0*
validate_indices(
Í
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
Ł
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
ö
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classw
usloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ü
gloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
ż
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ś
>loss/dense_2_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_1Const*
_output_shapes
: *
valueB Bweights.shape=*
dtype0

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: *)
value B Bdense_2_sample_weights:0

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_4Const*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_5Const*
_output_shapes
: *
valueB B
is_scalar=*
dtype0

Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
É
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Ç
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Č
Lloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ą
Iloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ń
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ű
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *)
value B Bdense_2_sample_weights:0*
dtype0
đ
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ű
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 
í
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Č
Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ţ
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ú
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ř
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
ę
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
ł
Jloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ö
3loss/dense_2_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_2_loss/MeanK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
Ĺ
3loss/dense_2_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
-loss/dense_2_loss/broadcast_weights/ones_likeFill3loss/dense_2_loss/broadcast_weights/ones_like/Shape3loss/dense_2_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0

#loss/dense_2_loss/broadcast_weightsMuldense_2_sample_weights-loss/dense_2_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_2_loss/MulMulloss/dense_2_loss/Mean#loss/dense_2_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
loss/dense_2_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/SumSumloss/dense_2_loss/Mulloss/dense_2_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
c
loss/dense_2_loss/Const_1Const*
_output_shapes
:*
valueB: *
dtype0

loss/dense_2_loss/Sum_1Sum#loss/dense_2_loss/broadcast_weightsloss/dense_2_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
u
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/Sumloss/dense_2_loss/Sum_1*
_output_shapes
: *
T0
a
loss/dense_2_loss/zeros_likeConst*
_output_shapes
: *
valueB
 *    *
dtype0
|
loss/dense_2_loss/GreaterGreaterloss/dense_2_loss/Sum_1loss/dense_2_loss/zeros_like*
T0*
_output_shapes
: 

loss/dense_2_loss/SelectSelectloss/dense_2_loss/Greaterloss/dense_2_loss/truedivloss/dense_2_loss/zeros_like*
T0*
_output_shapes
: 
\
loss/dense_2_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Selectloss/dense_2_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_1*
_output_shapes
: *
T0
O
VarIsInitializedOp_8VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
K
VarIsInitializedOp_9VarIsInitializedOpAdam/lr*
_output_shapes
: 
T
VarIsInitializedOp_10VarIsInitializedOpAdam/iterations*
_output_shapes
: 
O
VarIsInitializedOp_11VarIsInitializedOp
Adam/decay*
_output_shapes
: 
P
VarIsInitializedOp_12VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
v
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6d071ea535a24e94887fe80489057ba0/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ş
save/SaveV2/tensor_namesConst*Ý
valueÓBĐBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_2/biasBdense_2/kernelBlstm_3/biasBlstm_3/kernelBlstm_3/recurrent_kernelBlstm_4/biasBlstm_4/kernelBlstm_4/recurrent_kernel*
dtype0*
_output_shapes
:
}
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*-
value$B"B B B B B B B B B B B B B *
dtype0
Ě
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOplstm_3/bias/Read/ReadVariableOp!lstm_3/kernel/Read/ReadVariableOp+lstm_3/recurrent_kernel/Read/ReadVariableOplstm_4/bias/Read/ReadVariableOp!lstm_4/kernel/Read/ReadVariableOp+lstm_4/recurrent_kernel/Read/ReadVariableOp*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
T0*

axis *
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
­
save/RestoreV2/tensor_namesConst*Ý
valueÓBĐBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_2/biasBdense_2/kernelBlstm_3/biasBlstm_3/kernelBlstm_3/recurrent_kernelBlstm_4/biasBlstm_4/kernelBlstm_4/recurrent_kernel*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*-
value$B"B B B B B B B B B B B B B *
dtype0
Ě
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*H
_output_shapes6
4:::::::::::::*
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense_2/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
Y
save/AssignVariableOp_6AssignVariableOpdense_2/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
V
save/AssignVariableOp_7AssignVariableOplstm_3/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_8AssignVariableOplstm_3/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
c
save/AssignVariableOp_9AssignVariableOplstm_3/recurrent_kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
X
save/AssignVariableOp_10AssignVariableOplstm_4/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
Z
save/AssignVariableOp_11AssignVariableOplstm_4/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
d
save/AssignVariableOp_12AssignVariableOplstm_4/recurrent_kernelsave/Identity_13*
dtype0
í
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"ąw
cond_context ww
Ú
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ű
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ś
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
ëV
Sloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ŕ'
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ň
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ä
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Ś
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ő
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Á
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:02í"
ę"
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 * 
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ú
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0×
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ô
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12š

ś

mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*é
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ú
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ŕ
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *
Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ˇ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Á
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0§
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0˘
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ą
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0"Á_
while_contextŻ_Ź_
Ó/
lstm_3/while/while_context  *lstm_3/while/LoopCond:02lstm_3/while/Merge:0:lstm_3/while/Identity:0Blstm_3/while/Exit:0Blstm_3/while/Exit_1:0Blstm_3/while/Exit_2:0Blstm_3/while/Exit_3:0Blstm_3/while/Exit_4:0JÜ,
lstm_3/TensorArray:0
Clstm_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm_3/TensorArray_1:0
lstm_3/bias:0
lstm_3/kernel:0
lstm_3/recurrent_kernel:0
lstm_3/strided_slice_1:0
lstm_3/while/BiasAdd:0
lstm_3/while/BiasAdd_1:0
lstm_3/while/BiasAdd_2:0
lstm_3/while/BiasAdd_3:0
lstm_3/while/Const:0
lstm_3/while/Const_1:0
lstm_3/while/Const_2:0
lstm_3/while/Const_3:0
lstm_3/while/Const_4:0
lstm_3/while/Const_5:0
lstm_3/while/Enter:0
lstm_3/while/Enter_1:0
lstm_3/while/Enter_2:0
lstm_3/while/Enter_3:0
lstm_3/while/Enter_4:0
lstm_3/while/Exit:0
lstm_3/while/Exit_1:0
lstm_3/while/Exit_2:0
lstm_3/while/Exit_3:0
lstm_3/while/Exit_4:0
lstm_3/while/Identity:0
lstm_3/while/Identity_1:0
lstm_3/while/Identity_2:0
lstm_3/while/Identity_3:0
lstm_3/while/Identity_4:0
lstm_3/while/Less/Enter:0
lstm_3/while/Less:0
lstm_3/while/Less_1/Enter:0
lstm_3/while/Less_1:0
lstm_3/while/LogicalAnd:0
lstm_3/while/LoopCond:0
lstm_3/while/MatMul:0
lstm_3/while/MatMul_1:0
lstm_3/while/MatMul_2:0
lstm_3/while/MatMul_3:0
lstm_3/while/MatMul_4:0
lstm_3/while/MatMul_5:0
lstm_3/while/MatMul_6:0
lstm_3/while/MatMul_7:0
lstm_3/while/Merge:0
lstm_3/while/Merge:1
lstm_3/while/Merge_1:0
lstm_3/while/Merge_1:1
lstm_3/while/Merge_2:0
lstm_3/while/Merge_2:1
lstm_3/while/Merge_3:0
lstm_3/while/Merge_3:1
lstm_3/while/Merge_4:0
lstm_3/while/Merge_4:1
lstm_3/while/NextIteration:0
lstm_3/while/NextIteration_1:0
lstm_3/while/NextIteration_2:0
lstm_3/while/NextIteration_3:0
lstm_3/while/NextIteration_4:0
#lstm_3/while/ReadVariableOp/Enter:0
lstm_3/while/ReadVariableOp:0
 lstm_3/while/ReadVariableOp_10:0
 lstm_3/while/ReadVariableOp_11:0
lstm_3/while/ReadVariableOp_1:0
lstm_3/while/ReadVariableOp_2:0
lstm_3/while/ReadVariableOp_3:0
%lstm_3/while/ReadVariableOp_4/Enter:0
lstm_3/while/ReadVariableOp_4:0
lstm_3/while/ReadVariableOp_5:0
lstm_3/while/ReadVariableOp_6:0
lstm_3/while/ReadVariableOp_7:0
%lstm_3/while/ReadVariableOp_8/Enter:0
lstm_3/while/ReadVariableOp_8:0
lstm_3/while/ReadVariableOp_9:0
lstm_3/while/Switch:0
lstm_3/while/Switch:1
lstm_3/while/Switch_1:0
lstm_3/while/Switch_1:1
lstm_3/while/Switch_2:0
lstm_3/while/Switch_2:1
lstm_3/while/Switch_3:0
lstm_3/while/Switch_3:1
lstm_3/while/Switch_4:0
lstm_3/while/Switch_4:1
lstm_3/while/Tanh:0
lstm_3/while/Tanh_1:0
&lstm_3/while/TensorArrayReadV3/Enter:0
(lstm_3/while/TensorArrayReadV3/Enter_1:0
 lstm_3/while/TensorArrayReadV3:0
8lstm_3/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
2lstm_3/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm_3/while/add/y:0
lstm_3/while/add:0
lstm_3/while/add_1:0
lstm_3/while/add_2/y:0
lstm_3/while/add_2:0
lstm_3/while/add_3:0
lstm_3/while/add_4/y:0
lstm_3/while/add_4:0
lstm_3/while/add_5:0
lstm_3/while/add_6:0
lstm_3/while/add_7:0
lstm_3/while/add_8/y:0
lstm_3/while/add_8:0
lstm_3/while/add_9/y:0
lstm_3/while/add_9:0
$lstm_3/while/clip_by_value/Minimum:0
lstm_3/while/clip_by_value:0
&lstm_3/while/clip_by_value_1/Minimum:0
lstm_3/while/clip_by_value_1:0
&lstm_3/while/clip_by_value_2/Minimum:0
lstm_3/while/clip_by_value_2:0
!lstm_3/while/maximum_iterations:0
lstm_3/while/mul/x:0
lstm_3/while/mul:0
lstm_3/while/mul_1/x:0
lstm_3/while/mul_1:0
lstm_3/while/mul_2:0
lstm_3/while/mul_3:0
lstm_3/while/mul_4/x:0
lstm_3/while/mul_4:0
lstm_3/while/mul_5:0
"lstm_3/while/strided_slice/stack:0
$lstm_3/while/strided_slice/stack_1:0
$lstm_3/while/strided_slice/stack_2:0
lstm_3/while/strided_slice:0
$lstm_3/while/strided_slice_1/stack:0
&lstm_3/while/strided_slice_1/stack_1:0
&lstm_3/while/strided_slice_1/stack_2:0
%lstm_3/while/strided_slice_10/stack:0
'lstm_3/while/strided_slice_10/stack_1:0
'lstm_3/while/strided_slice_10/stack_2:0
lstm_3/while/strided_slice_10:0
%lstm_3/while/strided_slice_11/stack:0
'lstm_3/while/strided_slice_11/stack_1:0
'lstm_3/while/strided_slice_11/stack_2:0
lstm_3/while/strided_slice_11:0
lstm_3/while/strided_slice_1:0
$lstm_3/while/strided_slice_2/stack:0
&lstm_3/while/strided_slice_2/stack_1:0
&lstm_3/while/strided_slice_2/stack_2:0
lstm_3/while/strided_slice_2:0
$lstm_3/while/strided_slice_3/stack:0
&lstm_3/while/strided_slice_3/stack_1:0
&lstm_3/while/strided_slice_3/stack_2:0
lstm_3/while/strided_slice_3:0
$lstm_3/while/strided_slice_4/stack:0
&lstm_3/while/strided_slice_4/stack_1:0
&lstm_3/while/strided_slice_4/stack_2:0
lstm_3/while/strided_slice_4:0
$lstm_3/while/strided_slice_5/stack:0
&lstm_3/while/strided_slice_5/stack_1:0
&lstm_3/while/strided_slice_5/stack_2:0
lstm_3/while/strided_slice_5:0
$lstm_3/while/strided_slice_6/stack:0
&lstm_3/while/strided_slice_6/stack_1:0
&lstm_3/while/strided_slice_6/stack_2:0
lstm_3/while/strided_slice_6:0
$lstm_3/while/strided_slice_7/stack:0
&lstm_3/while/strided_slice_7/stack_1:0
&lstm_3/while/strided_slice_7/stack_2:0
lstm_3/while/strided_slice_7:0
$lstm_3/while/strided_slice_8/stack:0
&lstm_3/while/strided_slice_8/stack_1:0
&lstm_3/while/strided_slice_8/stack_2:0
lstm_3/while/strided_slice_8:0
$lstm_3/while/strided_slice_9/stack:0
&lstm_3/while/strided_slice_9/stack_1:0
&lstm_3/while/strided_slice_9/stack_2:0
lstm_3/while/strided_slice_9:06
lstm_3/kernel:0#lstm_3/while/ReadVariableOp/Enter:0P
lstm_3/TensorArray:08lstm_3/while/TensorArrayWrite/TensorArrayWriteV3/Enter:06
lstm_3/bias:0%lstm_3/while/ReadVariableOp_4/Enter:0@
lstm_3/TensorArray_1:0&lstm_3/while/TensorArrayReadV3/Enter:0>
!lstm_3/while/maximum_iterations:0lstm_3/while/Less/Enter:0B
lstm_3/recurrent_kernel:0%lstm_3/while/ReadVariableOp_8/Enter:07
lstm_3/strided_slice_1:0lstm_3/while/Less_1/Enter:0o
Clstm_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0(lstm_3/while/TensorArrayReadV3/Enter_1:0Rlstm_3/while/Enter:0Rlstm_3/while/Enter_1:0Rlstm_3/while/Enter_2:0Rlstm_3/while/Enter_3:0Rlstm_3/while/Enter_4:0Z!lstm_3/while/maximum_iterations:0
Ó/
lstm_4/while/while_context  *lstm_4/while/LoopCond:02lstm_4/while/Merge:0:lstm_4/while/Identity:0Blstm_4/while/Exit:0Blstm_4/while/Exit_1:0Blstm_4/while/Exit_2:0Blstm_4/while/Exit_3:0Blstm_4/while/Exit_4:0JÜ,
lstm_4/TensorArray:0
Clstm_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lstm_4/TensorArray_1:0
lstm_4/bias:0
lstm_4/kernel:0
lstm_4/recurrent_kernel:0
lstm_4/strided_slice_1:0
lstm_4/while/BiasAdd:0
lstm_4/while/BiasAdd_1:0
lstm_4/while/BiasAdd_2:0
lstm_4/while/BiasAdd_3:0
lstm_4/while/Const:0
lstm_4/while/Const_1:0
lstm_4/while/Const_2:0
lstm_4/while/Const_3:0
lstm_4/while/Const_4:0
lstm_4/while/Const_5:0
lstm_4/while/Enter:0
lstm_4/while/Enter_1:0
lstm_4/while/Enter_2:0
lstm_4/while/Enter_3:0
lstm_4/while/Enter_4:0
lstm_4/while/Exit:0
lstm_4/while/Exit_1:0
lstm_4/while/Exit_2:0
lstm_4/while/Exit_3:0
lstm_4/while/Exit_4:0
lstm_4/while/Identity:0
lstm_4/while/Identity_1:0
lstm_4/while/Identity_2:0
lstm_4/while/Identity_3:0
lstm_4/while/Identity_4:0
lstm_4/while/Less/Enter:0
lstm_4/while/Less:0
lstm_4/while/Less_1/Enter:0
lstm_4/while/Less_1:0
lstm_4/while/LogicalAnd:0
lstm_4/while/LoopCond:0
lstm_4/while/MatMul:0
lstm_4/while/MatMul_1:0
lstm_4/while/MatMul_2:0
lstm_4/while/MatMul_3:0
lstm_4/while/MatMul_4:0
lstm_4/while/MatMul_5:0
lstm_4/while/MatMul_6:0
lstm_4/while/MatMul_7:0
lstm_4/while/Merge:0
lstm_4/while/Merge:1
lstm_4/while/Merge_1:0
lstm_4/while/Merge_1:1
lstm_4/while/Merge_2:0
lstm_4/while/Merge_2:1
lstm_4/while/Merge_3:0
lstm_4/while/Merge_3:1
lstm_4/while/Merge_4:0
lstm_4/while/Merge_4:1
lstm_4/while/NextIteration:0
lstm_4/while/NextIteration_1:0
lstm_4/while/NextIteration_2:0
lstm_4/while/NextIteration_3:0
lstm_4/while/NextIteration_4:0
#lstm_4/while/ReadVariableOp/Enter:0
lstm_4/while/ReadVariableOp:0
 lstm_4/while/ReadVariableOp_10:0
 lstm_4/while/ReadVariableOp_11:0
lstm_4/while/ReadVariableOp_1:0
lstm_4/while/ReadVariableOp_2:0
lstm_4/while/ReadVariableOp_3:0
%lstm_4/while/ReadVariableOp_4/Enter:0
lstm_4/while/ReadVariableOp_4:0
lstm_4/while/ReadVariableOp_5:0
lstm_4/while/ReadVariableOp_6:0
lstm_4/while/ReadVariableOp_7:0
%lstm_4/while/ReadVariableOp_8/Enter:0
lstm_4/while/ReadVariableOp_8:0
lstm_4/while/ReadVariableOp_9:0
lstm_4/while/Switch:0
lstm_4/while/Switch:1
lstm_4/while/Switch_1:0
lstm_4/while/Switch_1:1
lstm_4/while/Switch_2:0
lstm_4/while/Switch_2:1
lstm_4/while/Switch_3:0
lstm_4/while/Switch_3:1
lstm_4/while/Switch_4:0
lstm_4/while/Switch_4:1
lstm_4/while/Tanh:0
lstm_4/while/Tanh_1:0
&lstm_4/while/TensorArrayReadV3/Enter:0
(lstm_4/while/TensorArrayReadV3/Enter_1:0
 lstm_4/while/TensorArrayReadV3:0
8lstm_4/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
2lstm_4/while/TensorArrayWrite/TensorArrayWriteV3:0
lstm_4/while/add/y:0
lstm_4/while/add:0
lstm_4/while/add_1:0
lstm_4/while/add_2/y:0
lstm_4/while/add_2:0
lstm_4/while/add_3:0
lstm_4/while/add_4/y:0
lstm_4/while/add_4:0
lstm_4/while/add_5:0
lstm_4/while/add_6:0
lstm_4/while/add_7:0
lstm_4/while/add_8/y:0
lstm_4/while/add_8:0
lstm_4/while/add_9/y:0
lstm_4/while/add_9:0
$lstm_4/while/clip_by_value/Minimum:0
lstm_4/while/clip_by_value:0
&lstm_4/while/clip_by_value_1/Minimum:0
lstm_4/while/clip_by_value_1:0
&lstm_4/while/clip_by_value_2/Minimum:0
lstm_4/while/clip_by_value_2:0
!lstm_4/while/maximum_iterations:0
lstm_4/while/mul/x:0
lstm_4/while/mul:0
lstm_4/while/mul_1/x:0
lstm_4/while/mul_1:0
lstm_4/while/mul_2:0
lstm_4/while/mul_3:0
lstm_4/while/mul_4/x:0
lstm_4/while/mul_4:0
lstm_4/while/mul_5:0
"lstm_4/while/strided_slice/stack:0
$lstm_4/while/strided_slice/stack_1:0
$lstm_4/while/strided_slice/stack_2:0
lstm_4/while/strided_slice:0
$lstm_4/while/strided_slice_1/stack:0
&lstm_4/while/strided_slice_1/stack_1:0
&lstm_4/while/strided_slice_1/stack_2:0
%lstm_4/while/strided_slice_10/stack:0
'lstm_4/while/strided_slice_10/stack_1:0
'lstm_4/while/strided_slice_10/stack_2:0
lstm_4/while/strided_slice_10:0
%lstm_4/while/strided_slice_11/stack:0
'lstm_4/while/strided_slice_11/stack_1:0
'lstm_4/while/strided_slice_11/stack_2:0
lstm_4/while/strided_slice_11:0
lstm_4/while/strided_slice_1:0
$lstm_4/while/strided_slice_2/stack:0
&lstm_4/while/strided_slice_2/stack_1:0
&lstm_4/while/strided_slice_2/stack_2:0
lstm_4/while/strided_slice_2:0
$lstm_4/while/strided_slice_3/stack:0
&lstm_4/while/strided_slice_3/stack_1:0
&lstm_4/while/strided_slice_3/stack_2:0
lstm_4/while/strided_slice_3:0
$lstm_4/while/strided_slice_4/stack:0
&lstm_4/while/strided_slice_4/stack_1:0
&lstm_4/while/strided_slice_4/stack_2:0
lstm_4/while/strided_slice_4:0
$lstm_4/while/strided_slice_5/stack:0
&lstm_4/while/strided_slice_5/stack_1:0
&lstm_4/while/strided_slice_5/stack_2:0
lstm_4/while/strided_slice_5:0
$lstm_4/while/strided_slice_6/stack:0
&lstm_4/while/strided_slice_6/stack_1:0
&lstm_4/while/strided_slice_6/stack_2:0
lstm_4/while/strided_slice_6:0
$lstm_4/while/strided_slice_7/stack:0
&lstm_4/while/strided_slice_7/stack_1:0
&lstm_4/while/strided_slice_7/stack_2:0
lstm_4/while/strided_slice_7:0
$lstm_4/while/strided_slice_8/stack:0
&lstm_4/while/strided_slice_8/stack_1:0
&lstm_4/while/strided_slice_8/stack_2:0
lstm_4/while/strided_slice_8:0
$lstm_4/while/strided_slice_9/stack:0
&lstm_4/while/strided_slice_9/stack_1:0
&lstm_4/while/strided_slice_9/stack_2:0
lstm_4/while/strided_slice_9:0P
lstm_4/TensorArray:08lstm_4/while/TensorArrayWrite/TensorArrayWriteV3/Enter:06
lstm_4/bias:0%lstm_4/while/ReadVariableOp_4/Enter:0o
Clstm_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0(lstm_4/while/TensorArrayReadV3/Enter_1:0>
!lstm_4/while/maximum_iterations:0lstm_4/while/Less/Enter:06
lstm_4/kernel:0#lstm_4/while/ReadVariableOp/Enter:0B
lstm_4/recurrent_kernel:0%lstm_4/while/ReadVariableOp_8/Enter:07
lstm_4/strided_slice_1:0lstm_4/while/Less_1/Enter:0@
lstm_4/TensorArray_1:0&lstm_4/while/TensorArrayReadV3/Enter:0Rlstm_4/while/Enter:0Rlstm_4/while/Enter_1:0Rlstm_4/while/Enter_2:0Rlstm_4/while/Enter_3:0Rlstm_4/while/Enter_4:0Z!lstm_4/while/maximum_iterations:0"ß
	variablesŃÎ
|
lstm_3/kernel:0lstm_3/kernel/Assign#lstm_3/kernel/Read/ReadVariableOp:0(2*lstm_3/kernel/Initializer/random_uniform:08

lstm_3/recurrent_kernel:0lstm_3/recurrent_kernel/Assign-lstm_3/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_3/recurrent_kernel/Initializer/mul_1:08
l
lstm_3/bias:0lstm_3/bias/Assign!lstm_3/bias/Read/ReadVariableOp:0(2 lstm_3/bias/Initializer/concat:08
|
lstm_4/kernel:0lstm_4/kernel/Assign#lstm_4/kernel/Read/ReadVariableOp:0(2*lstm_4/kernel/Initializer/random_uniform:08

lstm_4/recurrent_kernel:0lstm_4/recurrent_kernel/Assign-lstm_4/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_4/recurrent_kernel/Initializer/mul_1:08
l
lstm_4/bias:0lstm_4/bias/Assign!lstm_4/bias/Read/ReadVariableOp:0(2 lstm_4/bias/Initializer/concat:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08"é
trainable_variablesŃÎ
|
lstm_3/kernel:0lstm_3/kernel/Assign#lstm_3/kernel/Read/ReadVariableOp:0(2*lstm_3/kernel/Initializer/random_uniform:08

lstm_3/recurrent_kernel:0lstm_3/recurrent_kernel/Assign-lstm_3/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_3/recurrent_kernel/Initializer/mul_1:08
l
lstm_3/bias:0lstm_3/bias/Assign!lstm_3/bias/Read/ReadVariableOp:0(2 lstm_3/bias/Initializer/concat:08
|
lstm_4/kernel:0lstm_4/kernel/Assign#lstm_4/kernel/Read/ReadVariableOp:0(2*lstm_4/kernel/Initializer/random_uniform:08

lstm_4/recurrent_kernel:0lstm_4/recurrent_kernel/Assign-lstm_4/recurrent_kernel/Read/ReadVariableOp:0(2+lstm_4/recurrent_kernel/Initializer/mul_1:08
l
lstm_4/bias:0lstm_4/bias/Assign!lstm_4/bias/Read/ReadVariableOp:0(2 lstm_4/bias/Initializer/concat:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08*Š
serving_default
8
input_image)
lstm_3_input:0˙˙˙˙˙˙˙˙˙=
dense_2/BiasAdd:0(
dense_2/BiasAdd:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict