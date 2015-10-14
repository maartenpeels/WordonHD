.class public Lrrrrrr/ccrrrr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xb
    name = "ccrrrr"
.end annotation


# static fields
.field public static b0415041504150415Е0415:I = 0x0

.field public static b04150415ЕЕ04150415:I = 0x2

.field public static bЕ041504150415Е0415:I = 0x63

.field public static bЕЕЕЕ04150415:I = 0x1


# instance fields
.field public mHapticDataOffset:I

.field public mMappedByteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :goto_0
    sget v0, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    sget v1, Lrrrrrr/ccrrrr;->bЕЕЕЕ04150415:I

    add-int/2addr v0, v1

    sget v1, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    mul-int/2addr v0, v1

    invoke-static {}, Lrrrrrr/ccrrrr;->b0415ЕЕЕ04150415()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lrrrrrr/ccrrrr;->b0415041504150415Е0415:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x6

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x10

    invoke-static {}, Lrrrrrr/ccrrrr;->bЕ0415ЕЕ04150415()I

    move-result v0

    sput v0, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    const/16 v0, 0x4d

    sput v0, Lrrrrrr/ccrrrr;->b0415041504150415Е0415:I

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lrrrrrr/cccrrr;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    sget v0, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    sget v1, Lrrrrrr/ccrrrr;->bЕЕЕЕ04150415:I

    add-int/2addr v0, v1

    sget v1, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    mul-int/2addr v0, v1

    sget v1, Lrrrrrr/ccrrrr;->b04150415ЕЕ04150415:I

    rem-int/2addr v0, v1

    sget v1, Lrrrrrr/ccrrrr;->b0415041504150415Е0415:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lrrrrrr/ccrrrr;->bЕ0415ЕЕ04150415()I

    move-result v0

    sput v0, Lrrrrrr/ccrrrr;->bЕ041504150415Е0415:I

    const/16 v0, 0x3e

    sput v0, Lrrrrrr/ccrrrr;->b0415041504150415Е0415:I

    :cond_0
    invoke-direct {p0}, Lrrrrrr/ccrrrr;-><init>()V

    :cond_1
    mul-int/lit8 v0, v3, 0x3

    add-int/lit8 v0, v3, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    return-void

    :cond_2
    mul-int/lit8 v0, v3, 0x3

    add-int/lit8 v0, v3, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0
.end method

.method public static b0415ЕЕЕ04150415()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bЕ0415ЕЕ04150415()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method
