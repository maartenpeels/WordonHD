.class public Lrrrrrr/rrcrrr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rrcrrr"
.end annotation


# static fields
.field public static b0415Е0415Е04150415:I = 0x1

.field public static bЕ04150415Е04150415:I = 0x2

.field public static bЕЕ0415Е04150415:I = 0x2

.field public static bЕЕЕ041504150415:I


# instance fields
.field public final synthetic bЗ04170417041704170417:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 2

    const/4 v1, 0x4

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v1, 0x5

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lrrrrrr/rrcrrr;->bЕЕ0415Е04150415:I

    sget v1, Lrrrrrr/rrcrrr;->b0415Е0415Е04150415:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lrrrrrr/rrcrrr;->bЕ04150415Е04150415:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x8

    add-int/lit8 v0, v0, 0x6b

    mul-int/lit8 v0, v0, -0x2b

    invoke-static {}, Lrrrrrr/rrcrrr;->b041504150415Е04150415()I

    move-result v0

    sput v0, Lrrrrrr/rrcrrr;->bЕЕ0415Е04150415:I

    invoke-static {}, Lrrrrrr/rrcrrr;->b041504150415Е04150415()I

    move-result v0

    sput v0, Lrrrrrr/rrcrrr;->b0415Е0415Е04150415:I

    :pswitch_2
    iput-object p1, p0, Lrrrrrr/rrcrrr;->bЗ04170417041704170417:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static b041504150415Е04150415()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lrrrrrr/rrcrrr;->bЗ04170417041704170417:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    :cond_0
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bБ0411041104110411Б(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    return-void

    :cond_2
    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v2, 0x5

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    sget v1, Lrrrrrr/rrcrrr;->bЕЕ0415Е04150415:I

    sget v2, Lrrrrrr/rrcrrr;->b0415Е0415Е04150415:I

    add-int/2addr v1, v2

    sget v2, Lrrrrrr/rrcrrr;->bЕЕ0415Е04150415:I

    mul-int/2addr v1, v2

    sget v2, Lrrrrrr/rrcrrr;->bЕ04150415Е04150415:I

    rem-int/2addr v1, v2

    sget v2, Lrrrrrr/rrcrrr;->bЕЕЕ041504150415:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v1, v1, 0x2

    const/16 v1, 0x58

    sput v1, Lrrrrrr/rrcrrr;->bЕЕ0415Е04150415:I

    const/16 v1, 0x1d

    sput v1, Lrrrrrr/rrcrrr;->bЕЕЕ041504150415:I

    goto :goto_0
.end method
