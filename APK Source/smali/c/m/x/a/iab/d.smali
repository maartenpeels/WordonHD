.class public final Lc/m/x/a/iab/d;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Ljava/lang/String;

.field g:Landroid/content/Context;

.field h:Lcom/android/vending/billing/IInAppBillingService;

.field i:Landroid/content/ServiceConnection;

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lc/m/x/a/iab/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lc/m/x/a/iab/d;->a:Z

    const-string v0, "IabHelper"

    iput-object v0, p0, Lc/m/x/a/iab/d;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lc/m/x/a/iab/d;->c:Z

    iput-boolean v1, p0, Lc/m/x/a/iab/d;->d:Z

    iput-boolean v1, p0, Lc/m/x/a/iab/d;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lc/m/x/a/iab/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/iab/d;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    iput-object p2, p0, Lc/m/x/a/iab/d;->l:Ljava/lang/String;

    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)I
    .locals 5

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    :cond_2
    const-string v2, "Unexpected type for bundle response code."

    invoke-virtual {p0, v2}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected type for bundle response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(Lc/m/x/a/iab/q;Ljava/lang/String;)I
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Querying owned items, item type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling getPurchases with continuation token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/m/x/a/iab/d;->a(Landroid/os/Bundle;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Owned items response: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto :goto_1

    :cond_2
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lc/m/x/a/iab/d;->l:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lc/m/x/a/iab/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sku is owned: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v2, Lc/m/x/a/iab/r;

    invoke-direct {v2, p2, v0, v1}, Lc/m/x/a/iab/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lc/m/x/a/iab/r;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BUG: empty/null token!"

    invoke-direct {p0, v1}, Lc/m/x/a/iab/d;->f(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lc/m/x/a/iab/q;->b:Ljava/util/Map;

    iget-object v1, v2, Lc/m/x/a/iab/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v8

    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v0

    goto :goto_2

    :cond_4
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-direct {p0, v2}, Lc/m/x/a/iab/d;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "   Purchase data: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "   Signature: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v8, :cond_6

    const/16 v0, -0x3eb

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    move v1, v8

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lc/m/x/a/iab/q;Ljava/util/List;)I
    .locals 9

    const/4 v7, 0x0

    const-string v8, "DETAILS_LIST"

    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lc/m/x/a/iab/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    move v0, v7

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    move-object v4, v2

    move v2, v7

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    if-nez v3, :cond_3

    const-string v4, "new templist"

    invoke-virtual {p0, v4}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x13

    if-eq v3, v5, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "add pack index 0 of i "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v0}, Lc/m/x/a/iab/d;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto/16 :goto_1

    :cond_9
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lc/m/x/a/iab/t;

    invoke-direct {v3, p1, v0}, Lc/m/x/a/iab/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p2, Lc/m/x/a/iab/q;->a:Ljava/util/Map;

    iget-object v4, v3, Lc/m/x/a/iab/t;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move v0, v7

    goto/16 :goto_1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    const/16 v3, -0x3e8

    const-string v4, "/"

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-gt p0, v3, :cond_1

    sub-int v0, v3, p0

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc/m/x/a/iab/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc/m/x/a/iab/d;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/iab/d;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/iab/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;)Lc/m/x/a/iab/q;
    .locals 4

    const-string v0, "subs"

    const-string v0, "inapp"

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lc/m/x/a/iab/q;

    invoke-direct {v0}, Lc/m/x/a/iab/q;-><init>()V

    const-string v1, "inapp"

    invoke-direct {p0, v0, v1}, Lc/m/x/a/iab/d;->a(Lc/m/x/a/iab/q;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lc/m/x/a/iab/c;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lc/m/x/a/iab/c;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lc/m/x/a/iab/d;->a(Ljava/lang/String;Lc/m/x/a/iab/q;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lc/m/x/a/iab/c;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lc/m/x/a/iab/c;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lc/m/x/a/iab/d;->d:Z

    if-eqz v1, :cond_3

    const-string v1, "subs"

    invoke-direct {p0, v0, v1}, Lc/m/x/a/iab/d;->a(Lc/m/x/a/iab/q;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lc/m/x/a/iab/c;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "subs"

    invoke-direct {p0, v1, v0, p2}, Lc/m/x/a/iab/d;->a(Ljava/lang/String;Lc/m/x/a/iab/q;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lc/m/x/a/iab/c;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-object v0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/iab/d;->c:Z

    iget-object v0, p0, Lc/m/x/a/iab/d;->i:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    iget-object v1, p0, Lc/m/x/a/iab/d;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iput-object v2, p0, Lc/m/x/a/iab/d;->i:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v2, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILc/m/x/a/iab/m;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const-string v1, "launchPurchaseFlow"

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v1}, Lc/m/x/a/iab/d;->e(Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->d:Z

    if-nez v0, :cond_2

    new-instance v0, Lc/m/x/a/iab/p;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_0
    invoke-virtual {p0}, Lc/m/x/a/iab/d;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/d;->h:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/m/x/a/iab/d;->a(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v0, Lc/m/x/a/iab/p;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_3

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_3
    invoke-virtual {p0}, Lc/m/x/a/iab/d;->c()V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    new-instance v0, Lc/m/x/a/iab/p;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-interface {p5, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iput p4, p0, Lc/m/x/a/iab/d;->j:I

    iput-object p5, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    iput-object p3, p0, Lc/m/x/a/iab/d;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v0, Lc/m/x/a/iab/p;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-interface {p5, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    goto/16 :goto_0
.end method

.method public final a(Lc/m/x/a/iab/n;)V
    .locals 4

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Lc/m/x/a/iab/e;

    invoke-direct {v0, p0, p1}, Lc/m/x/a/iab/e;-><init>(Lc/m/x/a/iab/d;Lc/m/x/a/iab/n;)V

    iput-object v0, p0, Lc/m/x/a/iab/d;->i:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc/m/x/a/iab/d;->g:Landroid/content/Context;

    iget-object v2, p0, Lc/m/x/a/iab/d;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    new-instance v0, Lc/m/x/a/iab/p;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lc/m/x/a/iab/n;->a(Lc/m/x/a/iab/p;)V

    goto :goto_0
.end method

.method public final a(Lc/m/x/a/iab/r;Lc/m/x/a/iab/k;)V
    .locals 4

    const-string v3, "consume"

    const-string v0, "consume"

    invoke-virtual {p0, v3}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "consume"

    invoke-direct {p0, v3}, Lc/m/x/a/iab/d;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lc/m/x/a/iab/h;

    invoke-direct {v3, p0, v0, p2, v1}, Lc/m/x/a/iab/h;-><init>(Lc/m/x/a/iab/d;Ljava/util/List;Lc/m/x/a/iab/k;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/iab/d;->a:Z

    iput-object p1, p0, Lc/m/x/a/iab/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(ZLjava/util/List;Lc/m/x/a/iab/o;)V
    .locals 7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    invoke-direct {p0, v0}, Lc/m/x/a/iab/d;->e(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lc/m/x/a/iab/f;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc/m/x/a/iab/f;-><init>(Lc/m/x/a/iab/d;ZLjava/util/List;Landroid/os/Handler;Lc/m/x/a/iab/o;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 10

    const/16 v8, -0x3ea

    const/16 v4, -0x3ed

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "activityResultIABInternalHandle"

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/iab/d;->j:I

    if-eq p1, v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const-string v0, "handleActivityResult"

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/m/x/a/iab/d;->c()V

    if-nez p3, :cond_2

    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v0, Lc/m/x/a/iab/p;

    const-string v1, "Null data in IAB result"

    invoke-direct {v0, v8, v1}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v1, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    move v0, v5

    :goto_1
    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_d

    if-nez v0, :cond_d

    const-string v0, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase data: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Data signature: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Extras: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Expected item type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/m/x/a/iab/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-nez v2, :cond_8

    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    new-instance v0, Lc/m/x/a/iab/p;

    const/16 v1, -0x3f0

    const-string v2, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v1, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_4
    move v0, v6

    goto/16 :goto_0

    :cond_5
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_6
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto/16 :goto_1

    :cond_7
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :try_start_0
    new-instance v0, Lc/m/x/a/iab/r;

    iget-object v3, p0, Lc/m/x/a/iab/d;->k:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Lc/m/x/a/iab/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lc/m/x/a/iab/r;->d:Ljava/lang/String;

    iget-object v4, p0, Lc/m/x/a/iab/d;->l:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lc/m/x/a/iab/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase signature verification FAILED for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v1, Lc/m/x/a/iab/p;

    const/16 v2, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Signature verification failed for sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v2, v1, v0}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_9
    move v0, v6

    goto/16 :goto_0

    :cond_a
    const-string v1, "Purchase signature successfully verified."

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    new-instance v2, Lc/m/x/a/iab/p;

    const-string v3, "Success"

    invoke-direct {v2, v5, v3}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_b
    :goto_2
    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to parse purchase data."

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lc/m/x/a/iab/p;

    const-string v1, "Failed to parse purchase data."

    invoke-direct {v0, v8, v1}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v1, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    :cond_c
    move v0, v6

    goto/16 :goto_0

    :cond_d
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_b

    new-instance v1, Lc/m/x/a/iab/p;

    const-string v2, "Problem purchashing item."

    invoke-direct {v1, v0, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v0, v1, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    goto :goto_2

    :cond_e
    if-nez p2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase canceled - Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const-string v1, "User canceled."

    const-string v2, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-gt v0, v3, :cond_11

    if-ltz v0, :cond_11

    if-ne v0, v6, :cond_f

    move-object v0, v1

    move v1, v4

    :goto_3
    new-instance v2, Lc/m/x/a/iab/p;

    invoke-direct {v2, v1, v0}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v0, v2, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    goto/16 :goto_2

    :cond_f
    aget-object v1, v2, v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_3

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase failed. Result code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lc/m/x/a/iab/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v0, Lc/m/x/a/iab/p;

    const/16 v1, -0x3ee

    const-string v2, "Unknown purchase response."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lc/m/x/a/iab/d;->m:Lc/m/x/a/iab/m;

    invoke-interface {v1, v0, v7}, Lc/m/x/a/iab/m;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V

    goto/16 :goto_2

    :cond_11
    move-object v0, v1

    move v1, v4

    goto :goto_3
.end method

.method final b(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->d:Z

    return v0
.end method

.method final c()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/iab/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/m/x/a/iab/d;->c(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lc/m/x/a/iab/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/iab/d;->e:Z

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/iab/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/iab/d;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/iab/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
