.class public Lcom/chartboost/sdk/impl/ax$a$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ax$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/chartboost/sdk/Libraries/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ax$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ax$a;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$a$a;->a:Lcom/chartboost/sdk/impl/ax$a;

    .line 235
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ax$a;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ax;->m(Lcom/chartboost/sdk/impl/ax;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 236
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ax$a$a;->b:Landroid/content/Context;

    .line 237
    return-void
.end method


# virtual methods
.method public a(I)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a$a;->a:Lcom/chartboost/sdk/impl/ax$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$a;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->m(Lcom/chartboost/sdk/impl/ax;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Libraries/e$a;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a$a;->a:Lcom/chartboost/sdk/impl/ax$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$a;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->m(Lcom/chartboost/sdk/impl/ax;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ax$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ax$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 307
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/chartboost/sdk/impl/ax$b;->values()[Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v1

    move v2, v4

    .line 310
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 311
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/chartboost/sdk/impl/ax$b;->a(Lcom/chartboost/sdk/impl/ax$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 314
    :goto_1
    return v0

    .line 310
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 314
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ax$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 242
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 243
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/chartboost/sdk/impl/ax$b;->values()[Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v3

    .line 246
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 247
    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/chartboost/sdk/impl/ax$b;->a(Lcom/chartboost/sdk/impl/ax$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    :try_start_0
    aget-object v0, v3, v4

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax$b;->b(Lcom/chartboost/sdk/impl/ax$b;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/chartboost/sdk/impl/ax;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 251
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ax$a$a;->a:Lcom/chartboost/sdk/impl/ax$a;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/ax$a;->b:Lcom/chartboost/sdk/impl/ax;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ax$a$a;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/aq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 259
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 260
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax$a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    :goto_2
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v3, "error in more apps list"

    invoke-static {p0, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 246
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v2, v1, p1}, Lcom/chartboost/sdk/impl/aq;->a(Lcom/chartboost/sdk/Libraries/e$a;I)V

    .line 265
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v3, :cond_3

    .line 267
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 268
    iput v6, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 269
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aq;->a()I

    move-result v3

    iput v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 274
    :goto_3
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/aq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v0, Lcom/chartboost/sdk/impl/ax$a$a$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ax$a$a$1;-><init>(Lcom/chartboost/sdk/impl/ax$a$a;Lcom/chartboost/sdk/Libraries/e$a;I)V

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/aq;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 290
    goto :goto_2

    .line 271
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/aq;->a()I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/chartboost/sdk/impl/ax$b;->values()[Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
