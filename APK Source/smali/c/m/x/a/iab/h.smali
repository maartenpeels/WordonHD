.class final Lc/m/x/a/iab/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lc/m/x/a/iab/k;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lc/m/x/a/iab/l;

.field final synthetic e:Lc/m/x/a/iab/d;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/d;Ljava/util/List;Lc/m/x/a/iab/k;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lc/m/x/a/iab/h;->e:Lc/m/x/a/iab/d;

    iput-object p2, p0, Lc/m/x/a/iab/h;->a:Ljava/util/List;

    iput-object p3, p0, Lc/m/x/a/iab/h;->b:Lc/m/x/a/iab/k;

    iput-object p4, p0, Lc/m/x/a/iab/h;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/iab/h;->d:Lc/m/x/a/iab/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lc/m/x/a/iab/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/iab/r;

    :try_start_0
    iget-object v3, p0, Lc/m/x/a/iab/h;->e:Lc/m/x/a/iab/d;

    const-string v4, "consume"

    invoke-virtual {v3, v4}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    iget-object v4, v0, Lc/m/x/a/iab/r;->a:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Lc/m/x/a/iab/c;

    const/16 v4, -0x3f2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Items of type \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lc/m/x/a/iab/r;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' can\'t be consumed."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lc/m/x/a/iab/c; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lc/m/x/a/iab/c;->a()Lc/m/x/a/iab/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v4, v0, Lc/m/x/a/iab/r;->h:Ljava/lang/String;

    iget-object v5, v0, Lc/m/x/a/iab/r;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t consume "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". No token."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v3, Lc/m/x/a/iab/c;

    const/16 v4, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lc/m/x/a/iab/c; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v4, Lc/m/x/a/iab/c;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v3}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catch Lc/m/x/a/iab/c; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Consuming sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v6, v3, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v7, 0x3

    iget-object v8, v3, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v4}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Successfully consumed sku: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lc/m/x/a/iab/c; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v3, Lc/m/x/a/iab/p;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lc/m/x/a/iab/r;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lc/m/x/a/iab/c; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error consuming consuming sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v3, Lc/m/x/a/iab/c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error consuming sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lc/m/x/a/iab/c; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    iget-object v0, p0, Lc/m/x/a/iab/h;->e:Lc/m/x/a/iab/d;

    invoke-virtual {v0}, Lc/m/x/a/iab/d;->c()V

    iget-object v0, p0, Lc/m/x/a/iab/h;->b:Lc/m/x/a/iab/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/iab/h;->c:Landroid/os/Handler;

    new-instance v2, Lc/m/x/a/iab/i;

    invoke-direct {v2, p0, v1}, Lc/m/x/a/iab/i;-><init>(Lc/m/x/a/iab/h;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v0, p0, Lc/m/x/a/iab/h;->d:Lc/m/x/a/iab/l;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/m/x/a/iab/h;->c:Landroid/os/Handler;

    new-instance v2, Lc/m/x/a/iab/j;

    invoke-direct {v2, p0, v1}, Lc/m/x/a/iab/j;-><init>(Lc/m/x/a/iab/h;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
