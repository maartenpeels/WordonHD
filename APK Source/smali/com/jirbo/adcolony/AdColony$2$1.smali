.class Lcom/jirbo/adcolony/AdColony$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColony$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColony$2;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColony$2;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$2$1;->a:Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    move v0, v3

    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/a;->ag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 201
    sget-object v1, Lcom/jirbo/adcolony/a;->ag:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 202
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->d:Landroid/app/Activity;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v1, :cond_0

    .line 204
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    .line 205
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    .line 206
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iput-boolean v3, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->a:Z

    .line 209
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->invalidate()V

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method
