.class public Lcom/urbanairship/preference/UserIdPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/urbanairship/preference/UAPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .locals 1

    sget-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->k:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/urbanairship/preference/UserIdPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->k:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    invoke-virtual {v1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method
