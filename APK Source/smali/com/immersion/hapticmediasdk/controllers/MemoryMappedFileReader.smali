.class public Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrrrrrr/cccrrr;,
        Lrrrrrr/ccrrrr;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MemoryMappedFileReader"

.field public static b044A044Aъъъъ:I = 0x1

.field public static bъ044A044Aъъъ:I = 0x5d

.field public static bъ044Aъъъъ:I = 0x0

.field public static bъъ044Aъъъ:I = 0x2

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static final j:I = 0x1000

.field private static final k:I = 0x3000


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/nio/channels/FileChannel;

.field private d:Lrrrrrr/ccrrrr;

.field private e:Lrrrrrr/ccrrrr;

.field private f:I

.field private i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

.field private l:Ljava/lang/String;

.field private final m:Lcom/immersion/hapticmediasdk/utils/Profiler;

.field private n:Lcom/immersion/hapticmediasdk/utils/FileManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    :pswitch_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x28

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x7e

    add-int/lit8 v0, v0, -0x5

    mul-int/lit8 v0, v0, 0x1a

    const/16 v0, 0x37

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v0, 0x22

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/utils/FileManager;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/Profiler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    :try_start_1
    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private a(Lrrrrrr/ccrrrr;I)I
    .locals 3

    const/4 v2, 0x3

    iget v0, p1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    :pswitch_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v2, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sub-int v0, p2, v0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_2
    iget-object v1, p1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private a()Z
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    if-eqz v1, :cond_6

    move v0, v5

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->getHapticStorageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    :cond_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :cond_5
    add-int/lit8 v1, v6, 0x1

    mul-int/lit8 v1, v6, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_5

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044A044Aъъ()I

    move-result v2

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v5, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    goto :goto_0

    :cond_6
    const/16 v1, 0x3000

    :try_start_3
    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a(I)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    const-string v2, "MemoryMappedFileReader"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    :goto_2
    move v0, v4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    if-lt v0, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :goto_0
    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v2, 0x2

    const/16 v0, 0x3a

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v0, 0x4b

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    move v0, v2

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private b(I)I
    .locals 6

    const/4 v5, 0x4

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getSampleHertz()I

    move-result v1

    div-int/2addr v0, v1

    div-int v0, p1, v0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x7d

    add-int/lit8 v1, v1, 0x4a

    mul-int/lit8 v1, v1, -0x42

    const/16 v1, 0x4d

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x40

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getBitsPerSample()I

    move-result v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getNumberOfChannels()I

    move-result v2

    mul-int v3, v1, v2

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    float-to-int v2, v1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    mul-int/lit8 v4, v5, 0x5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    :goto_0
    cmpl-float v1, v3, v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    :goto_1
    mul-int/2addr v0, v1

    return v0

    :cond_2
    add-int/lit8 v4, v5, 0x1

    mul-int/lit8 v4, v5, 0x5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private b()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-eq v1, v5, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :pswitch_0
    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v3, v5, 0x5

    rem-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_0

    :goto_1
    const/4 v3, 0x3

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v3, v3, 0x9

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    if-eq v2, v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setActuatorArray([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setCompressionScheme(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setHapticDataLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setHapticDataStartByteOffset(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->build()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getSampleHertz()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    add-int/lit8 v1, v7, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x33

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getBitsPerSample()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getNumberOfChannels()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    move v0, v7

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;-><init>()V

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setFilePath(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setTotalFileLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setMajorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setMinorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setEncoding(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setSampleHertz(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setBitsPerSample(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setNumberOfChannels(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    new-array v3, v2, [I

    move v4, v6

    :goto_2
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput v5, v3, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lrrrrrr/ccrrrr;I)Z
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x55

    add-int/lit8 v1, v1, -0x62

    mul-int/lit8 v1, v1, -0x52

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    :goto_1
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b044Aъ044A044Aъъ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b044Aъ044Aъъъ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b044Aъъъъъ()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public static bъ044A044A044Aъъ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private c(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x17

    add-int/lit8 v1, v1, 0x76

    mul-int/lit8 v1, v1, -0x24

    const/16 v1, 0x62

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x15

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataStartByteOffset()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v0, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    add-int/lit16 v0, v0, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044A044Aъъ()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044A044Aъъ()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    const/16 v1, 0x50

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x44

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static c(Lrrrrrr/ccrrrr;I)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    iget v0, p0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v1, p0, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    mul-int/lit8 v0, v3, 0x3

    add-int/lit8 v0, v3, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v0, v1, :cond_3

    const/16 v0, -0x6f

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x23

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    move v0, v2

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v3, 0x3

    add-int/lit8 v0, v3, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)Lrrrrrr/ccrrrr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;->startTiming()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataStartByteOffset()I

    move-result v0

    add-int v2, v0, p1

    add-int/lit16 v0, p1, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v1

    if-gt v0, v1, :cond_2

    :cond_0
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v4, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    :goto_0
    :pswitch_0
    const/16 v0, 0x1000

    move v4, v0

    :goto_1
    add-int v0, p1, v4

    iget v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;

    const-string v1, "Not enough bytes available yet."

    invoke-direct {v0, v1}, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Lrrrrrr/ccrrrr;

    invoke-direct {v1, v6}, Lrrrrrr/ccrrrr;-><init>(Lrrrrrr/cccrrr;)V

    iput-object v0, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iput p1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v0

    sub-int/2addr v0, p1

    move v4, v0

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v4, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v3, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 6

    const/4 v3, 0x3

    const/4 v5, 0x1

    const-string v4, "MemoryMappedFileReader"

    const-string v0, "MemoryMappedFileReader"

    const-string v0, "%%%%%%%%%%% logBufferState %%%%%%%%%%%"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_2

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMMW capacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMMW position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMMW remaining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMMW mHapticDataOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMMW mHapticDataOffset + position = "

    :cond_0
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v3, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v2

    sget v3, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044A044Aъъ()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044A044Aъъ()I

    move-result v3

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v5, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_1
    iget v1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "MemoryMappedFileReader"

    const-string v0, "--------------------------------------"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_3

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMMW capacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMMW position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMMW remaining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMMW mHapticDataOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMMW mHapticDataOffset + position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "MemoryMappedFileReader"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "MemoryMappedFileReader"

    const-string v0, "mCurrentMMW is null"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "MemoryMappedFileReader"

    const-string v0, "mNextMMW is null"

    invoke-static {v4, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v3, 0x9

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_0

    goto/16 :goto_0
.end method

.method private static d(Lrrrrrr/ccrrrr;I)Z
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(Lrrrrrr/ccrrrr;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c(Lrrrrrr/ccrrrr;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x49

    add-int/lit8 v1, v1, -0x15

    mul-int/lit8 v1, v1, 0x12

    const/16 v1, 0x34

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/4 v1, 0x7

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private static e(Lrrrrrr/ccrrrr;I)Z
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x29

    add-int/lit8 v0, v0, 0x36

    mul-int/lit8 v0, v0, 0x5b

    const/16 v0, 0x39

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v0, 0x1b

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_0
    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p1

    :try_start_1
    invoke-static {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c(Lrrrrrr/ccrrrr;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bufferAtPlaybackPosition(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(Lrrrrrr/ccrrrr;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(Lrrrrrr/ccrrrr;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e(Lrrrrrr/ccrrrr;I)Z
    :try_end_1
    .catch Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v0, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I
    :try_end_2
    .catch Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eq v0, v1, :cond_4

    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    :cond_4
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v0, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    add-int/lit16 v2, v1, 0x1000

    if-eq v0, v2, :cond_6

    :cond_5
    add-int/lit16 v0, v1, 0x1000

    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c()V
    :try_end_3
    .catch Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    :try_start_4
    new-array v2, v0, [I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "MemoryMappedFileReader"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x5

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    :cond_8
    :try_start_7
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v0, :cond_9

    :try_start_8
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v0, v0, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-direct {p0, v2, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a(Lrrrrrr/ccrrrr;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    move v0, v4

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move v0, v3

    goto :goto_0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0
.end method

.method public close()V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v0, 0x23

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getBlockOffset(J)J
    .locals 3

    const/4 v2, 0x4

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v2, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v0, 0x59

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v0, 0x2f

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_2
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public getBlockSizeMS()I
    .locals 3

    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_0

    const/16 v1, -0x40

    add-int/lit8 v1, v1, -0x4f

    mul-int/lit8 v1, v1, 0x5b

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getBufferForPlaybackPosition(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v1

    if-lt v0, v1, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x2f

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_1
    iget v0, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    :pswitch_1
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v1, v3, 0x5

    rem-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :cond_2
    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    new-array v0, v0, [B

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_4

    :goto_2
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v1, v1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    sget v3, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEncryptedHapticHeader()[B
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    add-int/lit8 v1, v4, 0x1

    mul-int/lit8 v1, v4, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v3, 0x2

    const/16 v1, 0x24

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x5d

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getHapticBlockIndex(J)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x3

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x9

    rem-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :goto_0
    return v6

    :cond_1
    add-int/lit8 v4, v7, 0x1

    mul-int/lit8 v4, v7, 0x5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    :goto_1
    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/16 v2, 0x41

    sput v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    :goto_3
    :try_start_2
    new-array v1, v0, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const/16 v0, 0x14

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    goto :goto_0
.end method

.method public getHapticFileInformation()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    :cond_0
    const/4 v1, 0x3

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v4, 0x1

    mul-int/lit8 v1, v4, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044A044Aъъъъ:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v3, 0x2

    const/16 v1, 0x37

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/16 v1, 0x11

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBlockSizeMS(I)V
    .locals 2

    const/4 v1, 0x3

    sput p1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    :pswitch_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъъъъъ()I

    move-result v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, -0x29

    add-int/lit8 v0, v0, -0x66

    mul-int/lit8 v0, v0, 0x4e

    const/16 v0, 0xf

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setBytesAvailable(I)V
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x1

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    :cond_0
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044Aъъъ()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъъ044Aъъъ:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b044Aъ044A044Aъъ()I

    move-result v1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x2

    const/16 v0, 0x3e

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044A044Aъъъ:I

    const/4 v0, 0x4

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->bъ044Aъъъъ:I

    :cond_1
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a()Z

    return-void

    :cond_2
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method
