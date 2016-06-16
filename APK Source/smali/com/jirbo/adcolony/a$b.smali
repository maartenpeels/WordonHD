.class Lcom/jirbo/adcolony/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 391
    if-eqz p1, :cond_0

    move-object v0, p2

    :goto_0
    invoke-virtual {p0, p3, v0}, Lcom/jirbo/adcolony/a$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 392
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/jirbo/adcolony/a$b;
    check-cast p0, Ljava/lang/String;

    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    .line 379
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 380
    :goto_0
    if-nez v1, :cond_2

    const-string v2, ""

    .line 382
    :goto_1
    new-instance v3, Lcom/jirbo/adcolony/AdColonyV4VCReward;

    invoke-direct {v3, v1, v2, v0}, Lcom/jirbo/adcolony/AdColonyV4VCReward;-><init>(ZLjava/lang/String;I)V

    move v0, v4

    .line 383
    :goto_2
    sget-object v1, Lcom/jirbo/adcolony/a;->ae:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 385
    sget-object v1, Lcom/jirbo/adcolony/a;->ae:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jirbo/adcolony/AdColonyV4VCListener;

    invoke-interface {p0, v3}, Lcom/jirbo/adcolony/AdColonyV4VCListener;->onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v1, v4

    .line 379
    goto :goto_0

    .line 387
    :cond_1
    return-void

    :cond_2
    move-object v2, p0

    goto :goto_1
.end method
