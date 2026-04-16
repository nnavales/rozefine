<script lang="ts">
  import { onMount } from 'svelte';
  import UserCard from './UserCard.svelte';

  interface User {
    id: number;
    name: string;
    email: string;
  }

  let users: User[] = [];
  let loading = true;
  let error: string | null = null;

  onMount(async () => {
    try {
      const res = await fetch('/api/users');
      users = await res.json();
    } catch (e) {
      error = 'Failed to load users';
    } finally {
      loading = false;
    }
  });

  function handleDelete(id: number) {
    users = users.filter(u => u.id !== id);
  }
</script>

<main>
  {#if loading}
    <p>Loading...</p>
  {:else if error}
    <p class="error">{error}</p>
  {:else}
    <div class="user-grid">
      {#each users as user (user.id)}
        <UserCard {user} onDelete={() => handleDelete(user.id)} />
      {/each}
    </div>
  {/if}
</main>

<style>
  main {
    padding: 1rem;
  }

  .user-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .error {
    color: red;
  }
</style>