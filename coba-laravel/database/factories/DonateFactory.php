<?php

namespace Database\Factories;

use App\Models\Donate;
use Illuminate\Database\Eloquent\Factories\Factory;

class DonateFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Donate::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'budgeting_id' => mt_rand(1, 19),
            'address' => $this->faker->address(),
            'phone' => $this->faker->phoneNumber(),
            'nominal' => mt_rand(50000, 3500000),
            'showname' => '1',
            'donate_date' => '2022-05-05'
        ];
    }
}
