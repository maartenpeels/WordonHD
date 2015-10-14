.class public Lcom/heyzap/internal/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"


# static fields
.field public static final NO_COLOR:I = 0x1

.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public mColor:[I

.field public mDivX:[I

.field public mDivY:[I

.field public mPaddings:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-void
.end method

.method private static checkDivCount(I)V
    .locals 3

    .prologue
    .line 26
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    return-void
.end method

.method public static deserialize([B)Lcom/heyzap/internal/NinePatchChunk;
    .locals 4

    .prologue
    .line 32
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 36
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v1, Lcom/heyzap/internal/NinePatchChunk;

    invoke-direct {v1}, Lcom/heyzap/internal/NinePatchChunk;-><init>()V

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivX:[I

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivY:[I

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mColor:[I

    .line 43
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivX:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/heyzap/internal/NinePatchChunk;->checkDivCount(I)V

    .line 44
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivY:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/heyzap/internal/NinePatchChunk;->checkDivCount(I)V

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 51
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 52
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 53
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivX:[I

    invoke-static {v2, v0}, Lcom/heyzap/internal/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 59
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mDivY:[I

    invoke-static {v2, v0}, Lcom/heyzap/internal/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 60
    iget-object v2, v1, Lcom/heyzap/internal/NinePatchChunk;->mColor:[I

    invoke-static {v2, v0}, Lcom/heyzap/internal/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 62
    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
