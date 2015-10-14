.class public Lcom/urbanairship/preference/SoundEnablePreference;
.super Lcom/urbanairship/preference/UACheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/preference/UACheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .locals 1

    sget-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->b:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/urbanairship/preference/UACheckBoxPreference;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/urbanairship/preference/UACheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
