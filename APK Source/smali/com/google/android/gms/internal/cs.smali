.class public Lcom/google/android/gms/internal/cs;
.super Lcom/google/android/gms/internal/do;

# interfaces
.implements Lcom/google/android/gms/internal/cu$a;
.implements Lcom/google/android/gms/internal/ea$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cs$a;
    }
.end annotation


# instance fields
.field private final ky:Lcom/google/android/gms/internal/bq;

.field private final lC:Lcom/google/android/gms/internal/dz;

.field private final li:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mR:Lcom/google/android/gms/internal/bj;

.field private final oG:Lcom/google/android/gms/internal/cr$a;

.field private final oH:Ljava/lang/Object;

.field private final oI:Lcom/google/android/gms/internal/cx$a;

.field private final oJ:Lcom/google/android/gms/internal/l;

.field private oK:Lcom/google/android/gms/internal/do;

.field private oL:Lcom/google/android/gms/internal/cz;

.field private oM:Z

.field private oN:Lcom/google/android/gms/internal/bh;

.field private oO:Lcom/google/android/gms/internal/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx$a;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cr$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/do;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/cs;->ky:Lcom/google/android/gms/internal/bq;

    iput-object p6, p0, Lcom/google/android/gms/internal/cs;->oG:Lcom/google/android/gms/internal/cr$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cs;->oI:Lcom/google/android/gms/internal/cx$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/cs;->oJ:Lcom/google/android/gms/internal/l;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/ak;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v3, "Could not parse the ad size from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v2, p1, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v2, v2, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    array-length v3, v2

    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iget v7, v5, Lcom/google/android/gms/internal/ak;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    iget v7, v5, Lcom/google/android/gms/internal/ak;->widthPixels:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ak;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    iget v8, v5, Lcom/google/android/gms/internal/ak;->heightPixels:I

    int-to-float v8, v8

    div-float v6, v8, v6

    float-to-int v6, v6

    :goto_2
    if-ne v1, v7, :cond_4

    if-ne v0, v6, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ak;

    iget-object v1, p1, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/ak;-><init>(Lcom/google/android/gms/internal/ak;[Lcom/google/android/gms/internal/ak;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v7, v5, Lcom/google/android/gms/internal/ak;->width:I

    goto :goto_1

    :cond_3
    iget v6, v5, Lcom/google/android/gms/internal/ak;->height:I

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cs;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/cx;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/bh;

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/cs;->ky:Lcom/google/android/gms/internal/bq;

    iget-object v4, p0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/gms/internal/bh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/bh;->a(JJ)Lcom/google/android/gms/internal/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget v0, v0, Lcom/google/android/gms/internal/bn;->nw:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    iget v2, v2, Lcom/google/android/gms/internal/bn;->nw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aZ()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v0, v0, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/cz;->po:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bj;

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v1, v1, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v2, v2, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cr$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oG:Lcom/google/android/gms/internal/cr$a;

    return-object v0
.end method

.method private b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cs$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cs$3;-><init>(Lcom/google/android/gms/internal/cs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->e(J)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/dz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    return-object v0
.end method

.method private d(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->f(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v0, v0, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v0, v0, Lcom/google/android/gms/internal/cz;->errorCode:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v2, v2, Lcom/google/android/gms/internal/cz;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget v2, v2, Lcom/google/android/gms/internal/cz;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method private e(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->f(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private f(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Received ad response."

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/google/android/gms/internal/dz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/cs;->oM:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public aY()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->li:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    :try_start_0
    const-string v4, "AdLoaderBackgroundTask started."

    invoke-static {v4}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oJ:Lcom/google/android/gms/internal/l;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/l;->y()Lcom/google/android/gms/internal/h;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v14, Lcom/google/android/gms/internal/cx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oI:Lcom/google/android/gms/internal/cx$a;

    move-object v5, v0

    invoke-direct {v14, v5, v4}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/cx$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v5, -0x2

    const-wide/16 v6, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cu;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cu$a;)Lcom/google/android/gms/internal/do;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    move-object v11, v0

    monitor-enter v11
    :try_end_1
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    move-object v10, v0

    if-nez v10, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/cs$a;

    const-string v8, "Could not start the ad request service."

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v5

    move-object/from16 v33, v5

    move-wide/from16 v34, v6

    move-wide/from16 v5, v34

    move-object v7, v4

    move-object/from16 v4, v33

    :goto_0
    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cs$a;->getErrorCode()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cs$a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v4, v0

    if-nez v4, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/cz;

    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/gms/internal/cs$1;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cs$1;-><init>(Lcom/google/android/gms/internal/cs;)V

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v26, v5

    move-object/from16 v23, v7

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/internal/cz;->pw:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_7

    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/internal/cz;->pw:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v31, v5

    :goto_4
    :try_start_6
    new-instance v4, Lcom/google/android/gms/internal/dh;

    iget-object v5, v14, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/cz;->ne:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/internal/cz;->nf:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/internal/cz;->pq:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v11, v0

    iget v11, v11, Lcom/google/android/gms/internal/cz;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v12, v0

    iget-wide v12, v12, Lcom/google/android/gms/internal/cz;->ni:J

    iget-object v14, v14, Lcom/google/android/gms/internal/cx;->pj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v15, v0

    iget-boolean v15, v15, Lcom/google/android/gms/internal/cz;->po:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nx:Lcom/google/android/gms/internal/bi;

    move-object/from16 v16, v0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->ny:Lcom/google/android/gms/internal/br;

    move-object/from16 v17, v0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nz:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->mR:Lcom/google/android/gms/internal/bj;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oO:Lcom/google/android/gms/internal/bn;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->nA:Lcom/google/android/gms/internal/bl;

    move-object/from16 v20, v0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pp:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->pn:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/gms/internal/cz;->ps:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->pt:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v4 .. v31}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/dz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/br;Ljava/lang/String;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bl;JLcom/google/android/gms/internal/ak;JJJLjava/lang/String;Lorg/json/JSONObject;)V

    sget-object v5, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/cs$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$2;-><init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/dh;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_1
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs;->d(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cs;->aZ()V

    iget-object v10, v14, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v10, v10, Lcom/google/android/gms/internal/ak;->lU:[Lcom/google/android/gms/internal/ak;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/ak;
    :try_end_8
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v4

    :cond_2
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/gms/internal/cz;->po:Z

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cx;J)V

    :goto_9
    move-wide/from16 v26, v6

    move v8, v5

    move-object/from16 v23, v4

    goto/16 :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/gms/internal/cz;->pu:Z

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cs;->c(J)V

    goto :goto_9

    :catch_1
    move-exception v5

    move-object/from16 v33, v5

    move-wide/from16 v34, v6

    move-wide/from16 v5, v34

    move-object v7, v4

    move-object/from16 v4, v33

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs;->b(J)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/cs$a; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v4

    :cond_5
    :try_start_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cs$a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/dw;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance v4, Lcom/google/android/gms/internal/cz;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    move-object v9, v0

    iget-wide v9, v9, Lcom/google/android/gms/internal/cz;->ni:J

    invoke-direct {v4, v8, v9, v10}, Lcom/google/android/gms/internal/cz;-><init>(IJ)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/cs;->oL:Lcom/google/android/gms/internal/cz;

    goto/16 :goto_2

    :catch_2
    move-exception v5

    const-string v6, "Error parsing the JSON for Active View."

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_7
    move-object/from16 v31, v4

    goto/16 :goto_4

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_8
.end method

.method protected c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cs$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->R()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ak;->lT:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ct;

    iget-object v3, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/ea$a;Lcom/google/android/gms/internal/dz;II)V

    sget-object v0, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cs$4;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cs$4;-><init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/ct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cs;->e(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ct;->bc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "AdNetwork sent passback url"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ak;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/internal/ak;->heightPixels:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ct;->bd()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/cs$a;

    const-string v1, "AdNetwork timed out"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cs$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->oH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oK:Lcom/google/android/gms/internal/do;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dz;->stopLoading()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->lC:Lcom/google/android/gms/internal/dz;

    invoke-static {v1}, Lcom/google/android/gms/internal/dq;->a(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->oN:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bh;->cancel()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
